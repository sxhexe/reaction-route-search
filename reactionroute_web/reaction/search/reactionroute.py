import pybel
import openbabel as ob
import sys
import logging
import os
from seam_ts_search import *


def printMol(mol,fileFormat = "gjf", keywords = None, printOut = False):
    conv = ob.OBConversion()
    conv.SetOutFormat(fileFormat)
    if printOut:
        logging.info("printing the molecule")
        logging.info(conv.WriteString(mol, True))
    if keywords is not None:
        conv.AddOption("k", ob.OBConversion.OUTOPTIONS, keywords)
    if fileFormat == 'svg':
        conv.AddOption("C", ob.OBConversion.OUTOPTIONS)
        tmpMol = ob.OBMol(mol)
        tmpMol.DeleteHydrogens()
        return conv.WriteString(tmpMol, True)
    elif fileFormat == 'gjf':
        conv.AddOption("b", ob.OBConversion.OUTOPTIONS)
    return conv.WriteString(mol, True)

def getCanonicalSmiles(mol):
    conv = ob.OBConversion()
    conv.SetOutFormat("can")
    return conv.WriteString(mol, True)

def fromSmiToMol(smiles):
    if smiles is None:
        print("smiles is None in fromSmiToMol")
    conv = ob.OBConversion()
    conv.SetInFormat("smi")
    mol = ob.OBMol()
    success = conv.ReadString(mol,smiles)
    if success:
        return mol
    else:
        logging.error("converting failure from Smiles to molecule")
        sys.exit()

def smilesToFilename(smiles):
    fileName = ''
    for c in smiles:
        if c == '/':
            fileName += 'z'
            continue
        if c == '\\':
            fileName += 'x'
            continue
        if c == '#':
            fileName += '^'
            continue
        fileName += c
    return fileName

class EnergyReadingError(Exception):
    def __init__(self, value):
        self.message = value
    def __str__(self):
        return repr(self.message)


class ReactionGraphEdge:
    def __init__(self, fromNode, node, brokenBonds, createdBonds):
        self.fromNode = fromNode
        self.node = node
        self.brokenBonds = list(brokenBonds)
        self.createdBonds = list(createdBonds)
        self.ts = None
        self.tsEnergy = 0.0
        self.onPath = False

class ReactionGraphNode:
    def __init__(self, mol = None, smiles = None, molStringFormat = "smi", depth = None):
        if mol is not None:
            self.mol = ob.OBMol(mol)
            self.smiles = printMol(mol,'can')
        elif smiles is not None:
            self.mol = fromSmiToMol(smiles)
            self.smiles = smiles
        else:
            logging.warning("a molecule is needed to create a ReactionGraphNode")
            sys.exit()
        self.neighbors = {}
        self.depths = []
        self.energy = 0.0
        self.onPath = False
        if depth is not None:
            self.depths.append(depth)

class ReactionRoute:
    def __init__(self, reactantString = None, productString = None):
        self._allowedCoordNum = {(1,-1):[],
                                 (1,0):[1],
                                 (1,1):[],
                                 (5,0):[3],
                                 (5,1):[4],
                                 (5,-1):[2],
                                 (6,0):[4],
                                 (6,1):[3],
                                 (6,-1):[3],
                                 (8,0):[2],
                                 (8,1):[3],
                                 (8,-1):[1],
                                 (17,1):[],
                                 (17,0):[1],
                                 (17,-1):[0],
                                 (35,0):[1],
                                 (35,-1):[0],
                                 (35,1):[2]}
        self._outputLevel = 2
        self._maxStep = 3
        self._maxExtraStep = 1
        self._doAllCalculation = False
        self._doPathCalculation = False
        self._structureScreen = True
        self._energyScreen = False
        self._intermediateThresh = 200.0
        self._gaussianKeywords = "# pm6 3-21g opt"
        self._doTs = False
        self._tsThresh = 200.0
        self._gaussianTsKeywords = '# pm6 3-21g opt=(ts,noeigen,calcfc,maxcyc=100)'
        self._energyBaseLine = 0.0
        self._ignoreList = set()
        self._invalidStructures = set()
        self._reactantString = reactantString
        self._productString = productString
        self.targetLeastStep = 100
        self.targetFound = False
        self.reactionMap = {}
        self._energyMap = {}
        self.fragmentEnergyMap = {}
        self._brokenBonds = []
        self._createdBonds = []

    def canBreakOrFormBond(self, atom, breakOrForm, nElec):
        formalCharge = atom.GetFormalCharge()
        atomicNum = atom.GetAtomicNum()
        nBonds = 0
        for bond in ob.OBAtomBondIter(atom):
            nBonds += bond.GetBondOrder()
        if breakOrForm.lower() == "break":
            nBondChange = -1
        elif breakOrForm.lower() == "form":
            nBondChange = 1
        try:
            if nBonds + nBondChange in self._allowedCoordNum[(atomicNum, formalCharge+nBondChange*(nElec-1))]:
                return 1
            else:
                return 0
        except KeyError:
            return 0

    def createNewBond(self, mol, atom1, atom2, elecFromAtom1, elecFromAtom2):
        bond = atom1.GetBond(atom2)
        mol.BeginModify()
        if bond == None:
            bondOrder = 0
            bond = mol.NewBond()
            bond.SetBegin(atom1)
            bond.SetEnd(atom2)
            bond.SetBondOrder(1)
            atom1.AddBond(bond)
            atom2.AddBond(bond)
        else:
            bondOrder = bond.GetBondOrder()
            bond.SetBondOrder(bond.GetBondOrder()+1)
        if elecFromAtom1 == 0 and elecFromAtom2 == 2:
            atom1.SetFormalCharge(atom1.GetFormalCharge()-1)
            atom2.SetFormalCharge(atom2.GetFormalCharge()+1)
        elif elecFromAtom1 == 2 and elecFromAtom2 == 0:
            atom1.SetFormalCharge(atom1.GetFormalCharge()+1)
            atom2.SetFormalCharge(atom2.GetFormalCharge()-1)
        mol.EndModify()
        if (atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder+1) not in self._brokenBonds:
            self._createdBonds.append((atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder))
            logging.debug("adding ({}, {}, {}, {}, {}) to createdBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder))
        else:
            self._brokenBonds.remove((atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder+1))
            logging.debug("removing ({}, {}, {}, {}, {}) from brokenBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder+1))
        logging.debug("new bond {} - {} is formed".format(atom1.GetIdx(), atom2.GetIdx()))
        return bond

    def breakBond(self, mol, atom1, atom2, elecToAtom1, elecToAtom2):
        bond = atom1.GetBond(atom2)
        if bond != None:
            mol.BeginModify()
            bondOrder = bond.GetBondOrder()
            if bond.GetBondOrder() == 1:
                mol.DeleteBond(bond)
            elif bond.GetBondOrder() >= 2:
                bond.SetBondOrder(bond.GetBondOrder()-1)
            if elecToAtom1 == 0 and elecToAtom2 == 2:
                atom1.SetFormalCharge(atom1.GetFormalCharge()+1)
                atom2.SetFormalCharge(atom2.GetFormalCharge()-1)
            elif elecToAtom1 == 2 and elecToAtom2 == 0:
                atom1.SetFormalCharge(atom1.GetFormalCharge()-1)
                atom2.SetFormalCharge(atom2.GetFormalCharge()+1)
            mol.EndModify()
            logging.debug("bond {} - {} is broken".format(atom1.GetIdx(), atom2.GetIdx()))
            if (atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder-1) not in self._createdBonds:
                logging.debug("adding ({}, {}, {}, {}, {}) to brokenBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder))
                self._brokenBonds.append((atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder))
            else:
                logging.debug("removing ({}, {}, {}, {}, {}) from createdBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder-1))
                self._createdBonds.remove((atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder-1))
            return True
        else:
            logging.warning("No bond is found between atom {} and atom {}".format(atom1.GetIdx(), atom2.GetIdx()))
            return False

    def isInvalidStructure(self, mol):
        for atom1 in ob.OBMolAtomIter(mol):
            if atom1.GetFormalCharge() != 0:
                for atom2 in ob.OBAtomAtomIter(atom1):
                    if atom2.GetFormalCharge() != 0:
                        return True
        return False

    def doGaussian(self, mol, fullFileName):
        molCopy = ob.OBMol(mol)
        molCopy.SetTitle("ReactionRoute")
        inputFile = open("gaussian/"+fullFileName+".gjf", 'w')
        op3d = ob.OBOp.FindType("gen3d")
        op3d.Do(molCopy, '3')
        inputFile.write(printMol(molCopy, fileFormat = "gjf", keywords = self._gaussianKeywords))
        inputFile.close()
        gaussianCall = ''
        for c in fullFileName:
            if c == '(' or c == ')' or c == '$':
                gaussianCall += '\\'
            gaussianCall += c
        print("gdv gaussian/"+gaussianCall+".gjf")
        logging.info("gdv gaussian/"+gaussianCall+".gjf")
        os.system("gdv gaussian/"+gaussianCall+".gjf")
        try:
            molCopyEnergy = self.getGaussianEnergy("gaussian/"+fullFileName+".log")
        except EnergyReadingError:
            logging.error("First gaussian run failed. Trying second time with op3d.do(frag, 'dist')")
            inputFile = open("gaussian/"+fullFileName+".gjf", 'w')
            op3d = ob.OBOp.FindType("gen3d")
            op3d.Do(molCopy, 'dist')
            inputFile.write(printMol(molCopy, fileFormat = "gjf", keywords = self._gaussianKeywords))
            inputFile.close()
            os.system("gdv gaussian/"+gaussianCall+".gjf")
            try:
                molCopyEnergy = self.getGaussianEnergy("gaussian/"+fullFileName+".log")
            except EnergyReadingError:
                logging.error("Second gaussian run failed. ")
                molCopyEnergy = -999999999.0
        return molCopyEnergy

    def computeQMEnergy(self, mol, software, method, fragmentEnergyMap = None):
        if not os.path.isdir(software):
            os.system("mkdir "+software)
        molCopy = ob.OBMol(mol)
        smiles = getCanonicalSmiles(molCopy)
        fileName = smilesToFilename(smiles)
        if software.lower() == "gaussian" or software.lower() == "gauss":
            fragments = molCopy.Separate()
            if len(fragments) >= 2:
                energySum = 0.0
                for i, frag in enumerate(fragments):
                    fragSmiles = getCanonicalSmiles(frag)
                    if fragSmiles in fragmentEnergyMap:
                        frag.SetEnergy(fragmentEnergyMap[fragSmiles])
                        logging.debug("this fragment's energy has been calculated. It's %d kcal/mol"%(fragmentEnergyMap[fragSmiles]))
                    else:
                        fragmentEnergy = self.doGaussian(frag, fileName+str(i))
                        logging.debug("the energy of this fragment is %d kcal/mol"%(fragmentEnergy))
                        frag.SetEnergy(fragmentEnergy)
                        fragmentEnergyMap[fragSmiles] = fragmentEnergy
                    energySum += fragmentEnergyMap[fragSmiles]
                logging.info("The energy of the molecule is %d kcal/mol"%(energySum))
                return energySum
            else:
                return self.doGaussian(molCopy, fileName)

    def getGaussianEnergy(self, fileName):
        f = open(fileName, 'r')
        outputChunk = ''
        for line in f:
            if '\\' in line:
                outputChunk += line.strip()
        outputList = outputChunk.split('\\')
        for word in outputList:
            if "HF=" in word:
                logging.debug("HF="+word[3:])
                return 627.5*float(word[3:])
        raise EnergyReadingError("Can't read energy from gaussian output %s"%(fileName))


    def isomerSearch(self):
        logging.info("reactant = {}".format(self._reactantString))
        reactantMol = fromSmiToMol(self._reactantString)
        self._reactantString = getCanonicalSmiles(reactantMol)
        reactantMol.AddHydrogens()
        printMol(reactantMol, fileFormat = "gjf", printOut = True)
        productMol = fromSmiToMol(self._productString)
        self._productString = getCanonicalSmiles(productMol)
        logging.info("product = {}".format(self._productString))
        from collections import deque
        q = deque()
        head = ReactionGraphNode(mol=reactantMol)
        q.append(head)
        self.reactionMap[self._reactantString] = head
        self._energyMap = {self._reactantString: 0.0}
        if self._doPathCalculation:
            self._energyBaseLine = self.computeQMEnergy(reactantMol, "gaussian", self._gaussianKeywords, self.fragmentEnergyMap)
        else:
            self._energyBaseLine = 0.0
        head.energy = 0.0
        nStep = 0

        while len(q) != 0:
            qSize = len(q)
            nStep += 1
            logging.info("=========================================================")
            logging.info("                     nStep = "+str(nStep))
            if nStep >= self._maxStep or nStep > self.targetLeastStep + self._maxExtraStep:
                break
            for nNode in range(qSize):
                logging.info("***************************************************")
                logging.info("             processing a new molecule")
                currNode = q.popleft()
                if currNode.smiles == self._productString:
                    continue
                newMol = ob.OBMol(currNode.mol)
                # print "newMol is ", printMol(newMol, 'can')
                # print "currNode.smiles = ", currNode.smiles
                # if nStep == 2:
                #     import pdb
                #     pdb.set_trace()
                zeroElecGivers = set()
                oneElecGivers = set()
                twoElecGivers = set()
                zeroElecTakers = set()
                oneElecTakers = set()
                twoElecTakers = set()
                logging.debug("atom valence table")
                for atom in ob.OBMolAtomIter(newMol):
                    if atom.GetIdx() in self._ignoreList:
                        continue
                    if self.canBreakOrFormBond(atom, "form", 0):
                        zeroElecGivers.add(atom)
                    if self.canBreakOrFormBond(atom, "form", 1):
                        oneElecGivers.add(atom)
                    if self.canBreakOrFormBond(atom, "form", 2):
                        twoElecGivers.add(atom)
                    if self.canBreakOrFormBond(atom, "break", 0):
                        zeroElecTakers.add(atom)
                    if self.canBreakOrFormBond(atom, "break", 1):
                        oneElecTakers.add(atom)
                    if self.canBreakOrFormBond(atom, "break", 2):
                        twoElecTakers.add(atom)

                def printAtomSet(atomSet, header):
                    logging.info("atoms in " + header)
                    for atom in atomSet:
                        logging.info(str(atom.GetIdx())+ " " + str(atom.GetAtomicNum()))

                printAtomSet(zeroElecGivers, "zeroElecGivers")
                printAtomSet(twoElecGivers, "twoElecGivers")
                printAtomSet(zeroElecTakers, "zeroElecTakers")
                printAtomSet(twoElecTakers, "twoElecTakers")

                def addMol():
                    newMolSmiles = getCanonicalSmiles(newMol)
                    logging.info("newSmiles = "+newMolSmiles)
                    if newMolSmiles == self._productString:
                        logging.info("target found!!!")
                        self.targetLeastStep = nStep
                        self.targetFound = True
                    if self._structureScreen:
                        if newMolSmiles in self._invalidStructures:
                            logging.info("This molecule is invalid according to isInvalidStructure, not adding it")
                            return
                        elif self.isInvalidStructure(newMol):
                            logging.info("This molecule is invalid according to isInvalidStructure, not adding it")
                            self._invalidStructures.add(newMolSmiles)
                            return
                    if newMolSmiles not in self.reactionMap:
                        logging.info("new molecule found! Adding it to the map")
                        # if newMolSmiles not in self._energyMap:
                        #     if self._doAllCalculation:
                        #         absoluteEnergy = self.computeQMEnergy(newMol, "gaussian", self._gaussianKeywords, self.fragmentEnergyMap)
                        #         logging.debug("absoluteEnergy is %f kcal/mol"%(absoluteEnergy))
                        #         logging.debug("energy base line is "+str(self._energyBaseLine))
                        #         energy = absoluteEnergy - self._energyBaseLine
                        #         logging.info("relative energy is %f kcal/mol"%(energy))
                        #         self._energyMap[newMolSmiles] = energy
                        #     else:
                        #         absoluteEnergy = 0.0
                        # else:
                        #     energy = self._energyMap[newMolSmiles]
                        #     logging.info("The energy has been calculated. It's "+str(energy))
                        # if self._energyScreen:
                        #     logging.info("Screening energy")
                        #     if energy - currNode.energy < self._intermediateThresh:
                        #         logging.info("low energy intermediate found, adding it to the map...")
                        #         newNode = ReactionGraphNode(mol=newMol, depth=nStep)
                        #         newNode.energy = energy
                        #         self.reactionMap[newMolSmiles] = newNode
                        #         if newMolSmiles not in currNode.neighbors:
                        #             currNode.neighbors[newMolSmiles] = ReactionGraphEdge(currNode, newNode, self._brokenBonds, self._createdBonds)
                        #             q.append(newNode)
                        #     else:
                        #         logging.info("energy too high, discarded")
                        # else:
                        #     logging.info("not screening energy, adding it directly")
                        #     newNode.energy = energy
                        newNode = ReactionGraphNode(mol=newMol, depth=nStep)
                        self.reactionMap[newMolSmiles] = newNode
                        if newMolSmiles not in currNode.neighbors:
                            currNode.neighbors[newMolSmiles] = ReactionGraphEdge(currNode, newNode, self._brokenBonds, self._createdBonds)
                            q.append(newNode)
                    else:
                        logging.info("This molecule has been processed")
                        if currNode.smiles != newMolSmiles:
                            logging.debug("adding {} - {}".format(currNode.smiles, newMolSmiles))
                            logging.debug("Although this molecule has been added to reactionMap, it reveals a new route. Adding only the edge...")
                            self.reactionMap[newMolSmiles].depths.append(nStep)
                            if newMolSmiles not in currNode.neighbors:
                                currNode.neighbors[newMolSmiles] = ReactionGraphEdge(currNode, self.reactionMap[newMolSmiles], self._brokenBonds, self._createdBonds)
                    logging.debug("finish adding this molecule, no matter added or not")

                # Now consider all possible elementary reaction rule.
                # Make a bond. Only considering two electron transfer.
                for atom1 in zeroElecGivers:
                    for atom2 in twoElecGivers:
                        if atom1 is not atom2:
                            logging.debug("<bondBreaking, bondForming> = <0,1>")
                            self.createNewBond(newMol, atom1, atom2, 0, 2)
                            addMol()
                            logging.debug("restoring")
                            self.breakBond(newMol, atom1, atom2, 0, 2)

                # for atom1 in zeroElecTakers:
                #     for atom2 in twoElecTakers:
                #         if atom2 is not atom1:
                #             print("<bondBreaking, bondForming> = <1,0>")
                #             self.breakBond(newMol, atom1, atom2, 0, 2)
                #             addMol()
                #             print("restoring")
                #             self.createNewBond(newMol, atom1, atom2, 0, 2)

                for atom1 in twoElecTakers:
                    # first bond changing is bond breaking, let's start looping over the atom that takes two electrons.
                    logging.info("--------attempting non-cyclic concerted two bonds breakings and two bond formations---------")
                    logging.debug("atom1 is {}, {}".format(atom1.GetIdx(), atom1.GetAtomicNum()))
                    bondsOfAtom1 = [bond for bond in ob.OBAtomBondIter(atom1)]
                    for brokenBond1 in bondsOfAtom1:
                        atom2 = brokenBond1.GetNbrAtom(atom1)
                        logging.debug("atom2 is {}, {}".format(atom2.GetIdx(), atom2.GetAtomicNum()))
                        if atom2 is None:
                            logging.error("atom2 is None!!!!")
                        if atom2.GetIdx() in self._ignoreList:
                            continue
                        logging.debug("try breaking first bond {} - {}".format(atom1.GetIdx(), atom2.GetIdx()))
                        # import pdb; pdb.set_trace()
                        for tempAtom in zeroElecTakers:
                            if atom2.GetIdx() == tempAtom.GetIdx():
                                logging.debug("if finishing bond...")
                                if self.breakBond(newMol, atom1, atom2, 2, 0) is None:
                                    logging.warning("bond {} - {} breaking failed".format(atom1.GetIdx(),atom2.GetIdx()))
                                    continue
                                addMol()
                                logging.debug("restoring : ")
                                self.createNewBond(newMol, atom1, atom2, 2, 0)
                        logging.debug("if not finishing... breaking first bond {} - {}".format(atom1.GetIdx(), atom2.GetIdx()))
                        if self.breakBond(newMol, atom1, atom2, 2, 0) is None:
                            logging.warning("bond {} - {} breaking failed".format(atom1.GetIdx(),atom2.GetIdx()))
                            continue

                        for atom3 in ob.OBMolAtomIter(newMol):
                            logging.debug("atom3 is {}, {}".format(atom3.GetIdx(), atom3.GetAtomicNum()))
                            if atom3.GetIdx() in self._ignoreList or atom3 == atom1 or atom3 == atom2:
                                continue
                            logging.debug("try making first bond {} - {}".format(atom2.GetIdx(), atom3.GetIdx()))
                            for tempAtom in twoElecGivers:
                                if atom3.GetIdx() == tempAtom.GetIdx():
                                    logging.debug("if finishing bond...")
                                    if self.createNewBond(newMol, atom2, atom3, 0, 2) is None:
                                        logging.warning("bond {} - {} creation failed".format(atom2.GetIdx(),atom3.GetIdx()))
                                        continue
                                    addMol()
                                    logging.debug("restoring...")
                                    self.breakBond(newMol, atom2, atom3, 0, 2)
                            logging.debug("if not finishing... creating first bond {} - {}".format(atom2.GetIdx(), atom3.GetIdx()))
                            formedBond1 = self.createNewBond(newMol, atom2, atom3, 0, 2)
                            if formedBond1 is None:
                                logging.warning("bond {} - {} creation failed".format(atom2.GetIdx(), atom3.GetIdx()))
                                continue
                            nNewBond = 0
                            if formedBond1.GetBondOrder() == 1:
                                nNewBond += 1
                            bondsOfAtom3 = [bond for bond in ob.OBAtomBondIter(atom3)]
                            for brokenBond2 in bondsOfAtom3:
                                atom4 = brokenBond2.GetNbrAtom(atom3)
                                logging.debug("atom4 is {}, {}".format(atom4.GetIdx(), atom4.GetAtomicNum()))
                                if atom4.GetIdx() in self._ignoreList or atom4 == atom2 or atom4 == atom1:
                                    continue
                                logging.debug("try breaking second bond {} - {}".format(atom3.GetIdx(), atom4.GetIdx()))
                                for tempAtom in zeroElecTakers:
                                    if atom4.GetIdx() == tempAtom.GetIdx():
                                        logging.debug("if finishing bond...")
                                        if self.breakBond(newMol, atom3, atom4, 2, 0) is None:
                                            logging.warning("bond {} - {} breaking failed".format(atom3.GetIdx(),atom4.GetIdx()))
                                            continue
                                        addMol()
                                        logging.debug("restoring...")
                                        self.createNewBond(newMol, atom3, atom4, 2, 0)
                                logging.debug("if not finishing... breaking second bond {} - {}".format(atom3.GetIdx(), atom4.GetIdx()))
                                if self.breakBond(newMol, atom3, atom4, 2, 0) is None:
                                    logging.warning("bond {} - {} breaking failed".format(atom3.GetIdx(),atom4.GetIdx()))
                                    continue
                                # for tempAtom in twoElecGivers:
                                #     if atom5.GetIdx() == tempAtom.GetIdx():
                                for atom5 in twoElecGivers:
                                    logging.debug("atom5 is {}, {}".format(atom5.GetIdx(), atom5.GetAtomicNum()))
                                    if atom5 == atom1 or atom5 == atom3 or atom5 == atom4:
                                        continue
                                    logging.debug("try making second bond {} - {}".format(atom4.GetIdx(), atom5.GetIdx()))
                                    formedBond2 = self.createNewBond(newMol, atom4, atom5, 0, 2)
                                    if formedBond2 is None:
                                        logging.warning("bond {} - {} creation failed".format(atom4.GetIdx(), atom5.GetIdx()))
                                        continue
                                    nNewBond2 = nNewBond
                                    if formedBond2.GetBondOrder() == 1:
                                        nNewBond2 = nNewBond2 + 1
                                    if nNewBond2 >= 2 and atom5.GetIdx() != atom2.GetIdx():
                                        logging.debug("nNewBond2 = {}".format(nNewBond2))
                                        logging.debug("we have two newly formed single bonds now, trying to rewind")
                                        logging.debug("restoring...")
                                        self.breakBond(newMol, atom4, atom5, 0, 2)
                                        continue
                                    addMol()
                                    logging.debug("restoring...")
                                    self.breakBond(newMol, atom4, atom5, 0, 2)
                                logging.debug("restoring...")
                                self.createNewBond(newMol, atom3, atom4, 2, 0)
                            logging.debug("restoring...")
                            self.breakBond(newMol, atom2, atom3, 0, 2)
                        logging.debug("restoring...")
                        self.createNewBond(newMol, atom1, atom2, 2, 0)

                for atom1 in ob.OBMolAtomIter(newMol):
                    logging.debug("atom1 is {}, {}".format(atom1.GetIdx(), atom1.GetAtomicNum()))
                    if atom1.GetIdx() in self._ignoreList:
                        logging.debug("atom1 is ignored")
                        continue
                    logging.info("--------attempting cyclic concerted two bonds breakings and two bond formations----------")
                    bondsOfAtom1 = [bond for bond in ob.OBAtomBondIter(atom1)]
                    for brokenBond1 in bondsOfAtom1:
                        atom2 = brokenBond1.GetNbrAtom(atom1)
                        logging.debug("atom2 is {}, {}".format(atom2.GetIdx(), atom2.GetAtomicNum()))
                        if atom2.GetIdx() in self._ignoreList:
                            logging.debug("atom2 is ignored")
                            continue
                        logging.debug("try breaking first bond {} - {}".format(atom1.GetIdx(), atom2.GetIdx()))
                        if self.breakBond(newMol, atom1, atom2, 2, 0) is None:
                            logging.warning("bond {} - {} breaking failed".format(atom1.GetIdx(),atom2.GetIdx()))
                            continue
                        for atom3 in ob.OBMolAtomIter(newMol):
                            if atom3.GetIdx() in self._ignoreList:
                                logging.debug("atom3 is ignored")
                                continue
                            if atom3 == atom1 or atom3 == atom2:
                                continue
                            logging.debug("try making first bond {} - {}".format(atom2.GetIdx(), atom3.GetIdx()))
                            formedBond1 = self.createNewBond(newMol, atom2, atom3, 0, 2)
                            if formedBond1 is None:
                                logging.warning("bond {} - {} creation failed".format(atom2.GetIdx(), atom3.GetIdx()))
                                continue
                            nNewBond = 0
                            if formedBond1.GetBondOrder() == 1:
                                nNewBond += 1
                            bondsOfAtom3 = [bond for bond in ob.OBAtomBondIter(atom3)]
                            for brokenBond2 in bondsOfAtom3:
                                atom4 = brokenBond2.GetNbrAtom(atom3)
                                logging.debug("atom4 is {}, {}".format(atom4.GetIdx(), atom4.GetAtomicNum()))
                                if atom4.GetIdx() in self._ignoreList or atom4 == atom2 or atom4 == atom1:
                                    continue
                                logging.debug("try breaking second bond {} - {}".format(atom3.GetIdx(), atom4.GetIdx()))
                                if self.breakBond(newMol, atom3, atom4, 2, 0) is None:
                                    logging.warning("bond {} - {} breaking failed".format(atom3.GetIdx(),atom4.GetIdx()))
                                    continue
                                logging.debug("try making second bond {} - {}".format(atom4.GetIdx(), atom1.GetIdx()))
                                formedBond2 = self.createNewBond(newMol, atom4, atom1, 0, 2)
                                if formedBond2 is None:
                                    logging.warning("bond {} - {} creation failed".format(atom4.GetIdx(),atom1.GetIdx()))
                                nNewBond2 = nNewBond
                                if formedBond2.GetBondOrder() == 1:
                                    nNewBond2 += 1
                                if nNewBond2 >= 2 and (newMol.GetBond(atom1, atom3) or newMol.GetBond(atom2, atom4)):
                                    # 1 - 2 break      1--2          1  2
                                    # 2 - 3 form              --->   |  |
                                    # 3 - 4 break      4--3          4  3
                                    # 4 - 1 form
                                    # This is allowed only if there is no bond between 1 - 3 and 2 - 4.
                                    # If 1 - 3 were bonded this would just be a group exchange of 2 and 4. The same for 2 - 4.
                                    logging.debug("simple group exchange is not allowed. rewinding...")
                                    logging.debug("restoring...")
                                    self.breakBond(newMol, atom4, atom1, 0, 2)
                                    self.createNewBond(newMol, atom3, atom4, 2, 0)
                                    continue
                                addMol()
                                logging.debug("restoring...")
                                self.breakBond(newMol, atom4, atom1, 0, 2)
                                logging.debug("restoring...")
                                self.createNewBond(newMol, atom3, atom4, 2, 0)
                            logging.debug("restoring...")
                            self.breakBond(newMol, atom2, atom3, 0, 2)
                        logging.debug("restoring...")
                        self.createNewBond(newMol, atom1, atom2, 2, 0)



        logging.info("targetSmiles = "+self._productString)
        logging.info("targetLeastStep = {}".format(self.targetLeastStep))
        logging.info("===============End of the isomer search===============")
        return head, self.reactionMap[self._productString]

    def printTextReactionMap(self, head):
        from collections import deque
        q = deque()
        q.append(ReactionGraphEdge(None, head, [], []))
        visited = set()
        while len(q) > 0:
            qSize = len(q)
            print("\n------------------------")
            for nLevel in range(qSize):
                currEdge = q.popleft()
                # currNode, brokenBonds, createdBonds = q.popleft()
                print(currEdge.node.smiles, 'b ', currEdge.brokenBonds, 'c ', currEdge.createdBonds),
                if currEdge.node.smiles not in visited:
                    visited.add(currEdge.node.smiles)
                    for molSmiles, nextEdge in currEdge.node.neighbors.items():
                        q.append(nextEdge)
        print

    def printGraphicReactionMap(self, head, pathOnly = True):
        from collections import deque
        q = deque()
        q.append(ReactionGraphEdge(None, head, [], []))
        visited = set()
        if not os.path.isdir("dot"):
            os.system("mkdir dot")
        if not os.path.isdir("search/static/pics"):
            os.system("mkdir search/static/pics")
        dotFile = open("dot/dot.gv","w")
        dotFile.write("digraph G  {\nconcentrate = true\n")
        while len(q) > 0:
            qSize = len(q)
            for nLevel in range(qSize):
                currEdge = q.popleft()
                if currEdge.node.smiles not in visited:
                    visited.add(currEdge.node.smiles)
                    fileString = smilesToFilename(currEdge.node.smiles)
                    formatString = 'svg'
                    picFile = open("search/static/pics/"+fileString+'.'+formatString, 'w')
                    picFile.write(printMol(fromSmiToMol(currEdge.node.smiles), "svg"))
                    if self._doPathCalculation:
                        dotFile.write("    \""+currEdge.node.smiles+"\" [image = \"search/static/pics/"+fileString+'.'+formatString+"\", label = \""+str(currEdge.node.energy)+" kcal/mol\", shape = none, labelloc = b]\n")
                    else:
                        dotFile.write("    \""+currEdge.node.smiles+"\" [image = \"search/static/pics/"+fileString+'.'+formatString+"\", label = \"\", shape = none, labelloc = b]\n")
                    for molSmiles, nextEdge in currEdge.node.neighbors.items():
                        if pathOnly and nextEdge.onPath or not pathOnly:
                            q.append(nextEdge)
                            if self._doTs:
                                dotFile.write('   "{}" -> "{}" [ label="{:<8}" ];\n'.format(currEdge.node.smiles, nextEdge.node.smiles, str(nextEdge.tsEnergy)))
                            else:
                                dotFile.write('   "{}" -> "{}";\n'.format(currEdge.node.smiles, nextEdge.node.smiles))
        dotFile.write("}\n")

    def findDfsPath(self, head, end, paths, targetLeastStep, path = None):
        if path is None:
            path = [head]
        else:
            path.append(head)
        if len(path) > targetLeastStep + self._maxExtraStep:
            return
        if head == end:
            paths.append(path)
            return
        for molSmiles, edge in head.neighbors.items():
            if edge.node not in path:
                self.findDfsPath(edge.node, end, paths, targetLeastStep, path = list(path))

    def labelPathItems(self, paths, head):
        head.onPath = True
        for path in paths:
            breakPath = False
            for i, node in enumerate(path):
                if breakPath:
                    break
                if i+1 < len(path):
                    if self._doPathCalculation and self._energyScreen:
                        if path[i+1].smiles not in self._energyMap:
                            absoluteEnergy = self.computeQMEnergy(path[i+1].mol, "gaussian", self._gaussianKeywords, self.fragmentEnergyMap)
                            logging.debug("absoluteEnergy is %f kcal/mol"%(absoluteEnergy))
                            logging.debug("energy base line is "+str(self._energyBaseLine))
                            energy = absoluteEnergy - self._energyBaseLine
                            logging.info("relative energy is %f kcal/mol"%(energy))
                            logging.info("Screening energy")
                            self._energyMap[path[i+1].smiles] = energy
                        else:
                            logging.debug("energy already calculated")
                            energy = self._energyMap[path[i+1].smiles]
                        if energy - path[i].energy < self._intermediateThresh:
                            logging.info("low energy intermediate found, marking it as onPath")
                            path[i+1].energy = energy
                            node.neighbors[path[i+1].smiles].onPath = True
                            path[i+1].onPath = True
                        else:
                            logging.info("energy too high, discarded")
                            breakPath = True
                    else:
                        node.neighbors[path[i+1].smiles].onPath = True
                        path[i+1].onPath = True

    def printGraphicPathMap(self, paths):
        if not os.path.isdir("dot"):
            os.system("mkdir dot")
        if not os.path.isdir("search/static/pics"):
            os.system("mkdir search/static/pics")
        dotFile = open("dot/paths.gv", 'w')
        dotFile.write("digraph paths {")
        visitedNode = set()
        visitedEdge = set()
        for path in paths:
            for i, node in enumerate(path):
                if node not in visitedNode:
                    visitedNode.add(node)
                    if self._doPathCalculation:
                        node.energy = self.computeQMEnergy(node.mol, "gaussian", self._gaussianKeywords, self.fragmentEnergyMap)
                    dotFile.write("    \"" + node.smiles + "\" [image = \"search/static/pics/" + smilesToFilename(node.smiles) + ".svg\", label = \""+ str(node.energy) + " kcal/mol\", shape = none, labelloc = b]\n")
                if i < len(path)-1:
                    if (node, path[i+1]) not in visitedEdge:
                        visitedEdge.add((node, path[i+1]))
                        dotFile.write("    \"" + node.smiles + "\" -> \"" + path[i+1].smiles + "\";\n")
        dotFile.write("}\n")

    def getTsEstim(self, node, edge):
        mol1 = pybel.readstring('sdf', pybel.Molecule(node.mol).write('sdf'))
        mol1.make3D('uff')
        for bondData in edge.createdBonds:
            self.createNewBond(mol1.OBMol, mol1.atoms[bondData[0]-1].OBAtom, mol1.atoms[bondData[1]-1].OBAtom, bondData[2], bondData[3])
        mol1.localopt('uff')
        mol2 = pybel.readstring('sdf', mol1.write('sdf'))
        for bondData in edge.createdBonds:
            self.breakBond(mol1.OBMol, mol1.atoms[bondData[0]-1].OBAtom, mol1.atoms[bondData[1]-1].OBAtom, bondData[2], bondData[3])
        for bondData in edge.brokenBonds:
            self.breakBond(mol2.OBMol, mol2.atoms[bondData[0]-1].OBAtom, mol2.atoms[bondData[1]-1].OBAtom, bondData[2], bondData[3])
        try:
            return SeamTsSearch(mol1, mol2, 'uff')
        except TsEstimConvergeError:
            print("TS estimate convergence failure")
            logging.error("TS estimate convergence failure (SeamTsSearch fails)")
            return None

    def findTsOnPath(self, head):
        from collections import deque
        preQ = [edge for edge in head.neighbors.values() if edge.onPath]
        q = deque(preQ)
        visitedEdge = set()
        if not os.path.isdir('gaussian'):
            os.system('mkdir gaussian')
        if os.path.isdir('gaussian/ts'):
            os.system('rm -f gaussian/ts/*')
        else:
            os.system('mkdir gaussian/ts')
        while q:
            currEdge = q.popleft()
            visitedEdge.add((currEdge.fromNode.smiles, currEdge.node.smiles))
            print('\n========finding TS=======')
            print(currEdge.fromNode.smiles, '->', currEdge.node.smiles)
            print(visitedEdge)
            if (currEdge.node.smiles, currEdge.fromNode.smiles) in visitedEdge:
                print('reversed TS is calculated before')
                print(currEdge.node.neighbors)
                try:
                    reverseEdge = currEdge.node.neighbors[currEdge.fromNode.smiles]
                except KeyError:
                    import pdb; pdb.set_trace()
                currEdge.ts = reverseEdge.ts
                currEdge.tsEnergy = reverseEdge.tsEnergy
            else:
                print('calculating TS')
                mol = currEdge.fromNode.mol
                currTs = self.getTsEstim(currEdge.fromNode, currEdge)
                if currTs is not None:
                    print('TS esitimate:')
                    print(currTs.write('mol'))
                    currEdge.ts = currTs
                    filename = smilesToFilename(currEdge.fromNode.smiles) + '-' + smilesToFilename(currEdge.node.smiles)
                    currTs.title = "ReactionRoute.findTsOnPath"
                    opt = {'k': self._gaussianTsKeywords}
                    currTs.write('gjf', 'gaussian/ts/'+filename+'.com', overwrite=True, opt=opt)
                    currTs.title = ''
                    gaussianCall = ''
                    for c in filename:
                        if c == '(' or c == ')' or c == '$':
                            gaussianCall += '\\'
                        gaussianCall += c
                    print("gdv gaussian/ts/"+gaussianCall+".com")
                    logging.info("gdv gaussian/ts/"+gaussianCall+".com")
                    success = os.system('gdv gaussian/ts/'+gaussianCall+'.com')
                    try:
                        absoluteTsEnergy = self.getGaussianEnergy('gaussian/ts/'+filename+'.log')
                        currEdge.tsEnergy = absoluteTsEnergy - self._energyBaseLine
                        print('TS successfully calculated. The energy is {}'.format(currEdge.tsEnergy))
                    except EnergyReadingError:
                        currEdge.tsEnergy = 'gauTS E'
                else:
                    print('TS calculation failed')
                    currEdge.ts = None
                    currEdge.tsEnergy = 'tsEstim'
            for molSmiles, nextEdge in currEdge.node.neighbors.items():
                if nextEdge.onPath and (currEdge.node.smiles, molSmiles) not in visitedEdge:
                    print('adding {} -> {} to the queue'.format(currEdge.node.smiles, molSmiles))
                    q.append(nextEdge)


if __name__ == "__main__":
    logging.basicConfig(filename = "result", level=logging.DEBUG)
    rr = ReactionRoute(reactantString=sys.argv[1], productString=sys.argv[2])

    head, target= rr.isomerSearch()
    rr.printTextReactionMap(head)
    paths = []

    head, target= rr.isomerSearch()
    rr.printTextReactionMap(head)
    paths = []
    rr.findDfsPath(head, target, paths, rr.targetLeastStep)
    rr.labelPathItems(paths, head)
    if rr._doTs:
        rr.findTsOnPath(head)
    rr.printGraphicReactionMap(head)
    os.system("dot -Tsvg dot/dot.gv -o reaction-"+sys.argv[1]+".svg")
    # rr.printGraphicPathMap(paths)
    # os.system("dot -Tsvg dot/paths.gv -o paths-"+sys.argv[1]+".svg")
