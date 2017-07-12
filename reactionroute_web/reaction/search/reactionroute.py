import pybel
import openbabel as ob
import sys
import logging
import os


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
        self.neighbors = set()
        self.depths = []
        self.energy = 0.0
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
        self._energyBaseLine = 0.0
        self._ignoreList = set()
        self._invalidStructures = set()
        self._reactantString = reactantString
        self._productString = productString
        self.targetLeastStep = 100
        self.targetFound = False
        self.reactionMap = {}
        self.fragmentEnergyMap = {}

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
            bond = mol.NewBond()
            bond.SetBegin(atom1)
            bond.SetEnd(atom2)
            bond.SetBondOrder(1)
            atom1.AddBond(bond)
            atom2.AddBond(bond)
        else:
            bond.SetBondOrder(bond.GetBondOrder()+1)
        if elecFromAtom1 == 0 and elecFromAtom2 == 2:
            atom1.SetFormalCharge(atom1.GetFormalCharge()-1)
            atom2.SetFormalCharge(atom2.GetFormalCharge()+1)
        elif elecFromAtom1 == 2 and elecFromAtom2 == 0:
            atom1.SetFormalCharge(atom1.GetFormalCharge()+1)
            atom2.SetFormalCharge(atom2.GetFormalCharge()-1)
        mol.EndModify()
        logging.debug("new bond {} - {} is formed".format(atom1.GetIdx(), atom2.GetIdx()))
        return bond

    def breakBond(self, mol, atom1, atom2, elecToAtom1, elecToAtom2):
        bond = atom1.GetBond(atom2)
        if bond != None:
            mol.BeginModify()
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
            return True
        else:
            if self._outputLevel >= 2:
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
                        fragmentEnergy = doGaussian(frag, fileName+str(i))
                        logging.debug("the energy of this fragment is %d kcal/mol"%(fragmentEnergy))
                        frag.SetEnergy(fragmentEnergy)
                        fragmentEnergyMap[fragSmiles] = fragmentEnergy
                    energySum += fragmentEnergyMap[fragSmiles]
                logging.info("The energy of the molecule is %d kcal/mol"%(energySum))
                return energySum
            else:
                return doGaussian(molCopy, fileName)

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
        energyMap = {self._reactantString: 0.0}
        if self._doPathCalculation:
            energyBaseLine = self.computeQMEnergy(reactantMol, "gaussian", self._gaussianKeywords, self.fragmentEnergyMap)
        else:
            energyBaseLine = 0.0
        head.energy = 0.0
        nStep = 0

        while len(q) != 0:
            qSize = len(q)
            nStep += 1
            logging.info("=========================================================")
            logging.info("                     nStep = "+str(nStep))
            if nStep >= self._maxStep:
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
                        logging.info("new molecule found!")
                        if newMolSmiles not in energyMap:
                            if self._doAllCalculation:
                                absoluteEnergy = self.computeQMEnergy(newMol, "gaussian", self._gaussianKeywords, self.fragmentEnergyMap)
                            else:
                                absoluteEnergy = 0.0
                            logging.debug("absoluteEnergy is %f kcal/mol"%(absoluteEnergy))
                            logging.info("energy base line is "+str(energyBaseLine))
                            energy = absoluteEnergy - energyBaseLine
                            logging.debug("relative energy is %f kcal/mol"%(energy))
                            energyMap[newMolSmiles] = energy
                        else:
                            energy = energyMap[newMolSmiles]
                            logging.info("The energy has been calculated. It's "+str(energy))
                        if self._energyScreen:
                            logging.info("Screening energy")
                            if energy - currNode.energy < self._intermediateThresh:
                                logging.info("low energy intermediate found, adding it to the map...")
                                newNode = ReactionGraphNode(mol=newMol, depth=nStep)
                                newNode.energy = energy
                                self.reactionMap[newMolSmiles] = newNode
                                currNode.neighbors.add(newNode)
                                q.append(newNode)
                            else:
                                logging.info("energy too high, discarded")
                        else:
                            logging.info("not screening energy, adding it directly")
                            newNode = ReactionGraphNode(mol=newMol, depth=nStep)
                            newNode.energy = energy
                            self.reactionMap[newMolSmiles] = newNode
                            currNode.neighbors.add(newNode)
                            q.append(newNode)
                    else:
                        logging.info("This molecule has been processed")
                        if currNode != self.reactionMap[newMolSmiles]:
                            logging.debug("Although this molecule has been added to reactionMap, it reveals a new route. Adding only the edge...")
                            self.reactionMap[newMolSmiles].depths.append(nStep)
                            currNode.neighbors.add(self.reactionMap[newMolSmiles])
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
        q.append(head)
        visited = set()
        while len(q) > 0:
            qSize = len(q)
            print("\n------------------------")
            for nLevel in range(qSize):
                currNode = q.popleft()
                print(currNode.smiles),
                if currNode.smiles not in visited:
                    visited.add(currNode.smiles)
                    for tmpMol in currNode.neighbors:
                        q.append(tmpMol)
        print

    def printGraphicReactionMap(self, head):
        from collections import deque
        q = deque()
        q.append(head)
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
                currNode = q.popleft()
                if currNode.smiles not in visited:
                    visited.add(currNode.smiles)
                    fileString = smilesToFilename(currNode.smiles)
                    formatString = 'svg'
                    picFile = open("search/static/pics/"+fileString+'.'+formatString, 'w')
                    picFile.write(printMol(fromSmiToMol(currNode.smiles), "svg"))
                    dotFile.write("    \""+currNode.smiles+"\" [image = \"search/static/pics/"+fileString+'.'+formatString+"\", label = \""+str(currNode.energy)+" kcal/mol\", shape = none, labelloc = b]\n")
                    for tmpNode in currNode.neighbors:
                        q.append(tmpNode)
                        dotFile.write("    \""+currNode.smiles+"\" -> \""+tmpNode.smiles+"\";\n")
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
        for node in head.neighbors:
            if node not in path:
                self.findDfsPath(node, end, paths, targetLeastStep, path = list(path))

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


if __name__ == "__main__":
    logging.basicConfig(filename = "result", level=logging.INFO)
    rr = ReactionRoute(reactantString=sys.argv[1], productString=sys.argv[2])
    head, target= rr.isomerSearch()
    rr.printTextReactionMap(head)
    rr.printGraphicReactionMap(head)
    os.system("dot -Tsvg dot/dot.gv -o reaction-"+sys.argv[1]+".svg")
    paths = []
    rr.findDfsPath(head, target, paths, rr.targetLeastStep)
    rr.printGraphicPathMap(paths)
    os.system("dot -Tsvg dot/paths.gv -o paths-"+sys.argv[1]+".svg")
