import openbabel as ob
import pybel
import sys
import logging
import os
import subprocess
import time
import sqlite3
import numpy as np
from GaussianHelper import *
from collections import deque, defaultdict
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

def printAtom(atom):
    logging.debug('atom index {}, atomic number {}'.format(atom.GetIdx(), atom.GetAtomicNum()))

def printBond(bond):
    atom1 = bond.GetBeginAtom()
    atom2 = bond.GetEndAtom()
    logging.debug('bond index {} - {}, atomic number {} - {}'.format(atom1.GetIdx(), atom2.GetIdx(), atom1.GetAtomicNum(), atom2.GetAtomicNum()))

def getCanonicalSmiles(mol):
    conv = ob.OBConversion()
    conv.SetOutFormat("can")
    result = conv.WriteString(mol, True)
    return '.'.join(sorted(result.split('.')))

def strToMol(type, s):
    if s is None:
        print("string is None in strToMol")
    conv = ob.OBConversion()
    conv.SetInFormat(type)
    mol = ob.OBMol()
    success = conv.ReadString(mol,s)
    if success:
        return mol
    else:
        logging.error("converting failure from {} to molecule".format(type))
        raise SmilesError("Failed to convert {} to molecule".format(type))

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
        # if c == '(' or c == ')':
        #     fileName += '\\'
        fileName += c
    return fileName

def smilesToSysCall(smiles):
    fileName = smilesToFilename(smiles)
    call = ''
    for c in fileName:
        if c == '(' or c == ')' or c == '$':
            call += '\\'
        call += c
    return call

def numValenceElectron(atomicNumber):
    if atomicNumber <= 2:
        return atomicNumber
    elif atomicNumber <= 10:
        return atomicNumber - 2
    elif atomicNumber <= 18:
        return atomicNumber - 10
    elif atomicNumber <= 30:
        return atomicNumber - 18
    elif atomicNumber <= 36:
        return atomicNumber - 28
    elif atomicNumber <= 48:
        return atomicNumber - 36
    elif atomicNumber <= 54:
        return atomicNumber - 46
    else:
        print('Atomic number not supported in calculating the number of valence electrons. Either it is from the 6th row and below or it is an invalid number')
        return 0

def atomTotalBondOrder(atom):
    nBonds = 0
    for bond in ob.OBAtomBondIter(atom):
        nBonds += bond.GetBondOrder()
    return nBonds

def molToMat(mol):
    n = mol.NumAtoms()
    mat = np.array([[0 for _i in range(n+1)] for _j in range(n+3)])
    for i in range(1, n+1):
        mat[i][0] = mol.GetAtom(i).GetAtomicNum()
        mat[0][i] = mat[i][0]
    for atom in ob.OBMolAtomIter(mol):
        i = atom.GetIdx()
        nBonds = 0
        for bond in ob.OBAtomBondIter(atom):
            nBonds += bond.GetBondOrder()
        nonBondingElecs = numValenceElectron(atom.GetAtomicNum()) - nBonds - atom.GetFormalCharge()
        mat[i][i] = nonBondingElecs
        mat[n+1][i] = nBonds
        mat[n+2][i] = atom.GetFormalCharge()
    for bond in ob.OBMolBondIter(mol):
        i = bond.GetBeginAtomIdx()
        j = bond.GetEndAtomIdx()
        mat[i][j] = bond.GetBondOrder()
        mat[j][i] = mat[i][j]
    return mat

def matToMol(mat):
    n = len(mat) - 3
    mol = ob.OBMol()
    mol.BeginModify()
    for i in range(1, n+1):
        mol.NewAtom(i)
        atom = mol.GetAtom(i)
        atom.SetAtomicNum(mat[i][0])
        atom.SetFormalCharge(numValenceElectron(mat[i][0]) - sum(mat[i][1:]))# sum(mat[i][1:]) is the formal electron count on atom i
    for i in range(1, n+1):
        for j in range(1, i):
            if mat[i][j] != 0:
                mol.AddBond(i, j, mat[i][j])
    return mol


class EnergyReadingError(Exception):
    def __init__(self, value):
        self.message = value
    def __str__(self):
        return repr(self.message)

class SmilesError(Exception):
    def __init__(self, value):
        self.message = value
    def __str__(self):
        return repr(self.message)

class ReactionGraphEdge:
    def __init__(self, fromNode, node, eSources, eTargets):
        self.fromNode = fromNode
        self.node = node
        self.eSources = list(eSources)
        self.eTargets = list(eTargets)
        self.ts = None
        self.tsEnergy = 0.0
        self.onPath = False

class ReactionGraphNode:
    def __init__(self, mol = None, smiles = None, molStringFormat = "smi", depth = None):
        if mol is not None:
            self.mol = ob.OBMol(mol)
            self.smiles = getCanonicalSmiles(mol)
        elif smiles is not None:
            self.mol = strToMol('smi', smiles)
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
    def __init__(self, reactantString = None, productString = None, inputJson = None):
        # An equality holds for all atom: total bond order + # of non-bonding electrons = # of valence electrons + formal charge
        # This gives rise to the following rules for each atom. Atomic number determines the number of valence electrons, formal charge is formal charge, then there is total bond order. Once these three is fixed, the Luis structure is determined.
        self._allowedCoordNum = {(1,-1):[],
                                 (1,0):[1],
                                 (1,1):[0],
                                 (3,0):[3],
                                 (3,1):[],
                                 (4,0):[2],
                                 (5,-1):[2],
                                 (5,0):[3],
                                 (5,1):[4],
                                 # (6,-1):[3],
                                 (6,0):[4], # there is a bug in smiles about carbene, so we are not allowing carbene here.
                                 (6,1):[3],
                                 (7,-1):[2],
                                 (7,0):[3],
                                 (7,1):[4],
                                 (8,-1):[1],
                                 (8,0):[2],
                                 (8,1):[3],
                                 (9,-1):[0],
                                 (9,0):[1],
                                 (11,1):[],
                                 (12,0):[2],
                                 (13,0):[3],
                                 (14,0):[4],
                                 (15,0):[3,5],
                                 (15,1):[4],
                                 (16,0):[2,3],
                                 (17,-1):[0],
                                 (17,0):[1],
                                 (17,1):[],
                                 (35,0):[1],
                                 (35,-1):[0],
                                 (35,1):[2]}
        self._minFc = {}
        for pair, tboList in self._allowedCoordNum.items():
            if tboList != []:
                if pair[0] not in self._minFc:
                    self._minFc[pair[0]] = pair[1]
                else:
                    self._minFc[pair[0]] = min(self._minFc[pair[0]], pair[1])

        self._outputLevel = 2
        self._maxStep = 3
        self._maxExtraStep = 1
        self._doCalculation = False
        self._structureScreen = True
        self._energyScreen = True
        self._intermediateThresh = 200.0
        self._gaussianKeywords = "# pm6 3-21g opt"
        self._doTsSearch = False
        self._tsThresh = 200.0
        self._gaussianTsKeywords = '# pm6 3-21g opt=(ts,noeigen,calcfc,maxcyc=100)'
        self._energyBaseLine = 0.0
        self.ignoreList = set()
        self.activeList = set()
        self._invalidStructures = set()
        self._reactantString = reactantString
        self._productString = productString
        self._targetLeastStep = 100
        self._targetFound = False
        self._reactionMap = {}
        self._energyMap = {}
        self._fragmentEnergyMap = {}
        # self._brokenBonds = []
        # self._createdBonds = []
        self._gsub = False
        self._save = True
        self._pathOnly = True
        self._preEnergyScreen = False
        self._matrixForm = True
        self._filterFc = True
        self._noProduct = False
        if inputJson is not None:
            self.inputJson(inputJson)

    def inputJson(self, inputJson):
        import json
        params = json.loads(inputJson)
        if 'reactant' in params:
            self._reactantString = params['reactant']
        if 'product' in params:
            self._productString = params['product']
        if 'maxStep' in params:
            self._maxStep = params['maxStep']
        if 'maxExtraStep' in params:
            self._maxExtraStep = params['maxExtraStep']
        if 'doCalculation' in params:
            self._doCalculation = params['doCalculation']
        if 'structureScreen' in params:
            self._structureScreen = params['structureScreen']
        if 'energyScreen' in params:
            self._energyScreen = params['energyScreen']
        if 'intermediateThresh' in params:
            self._intermediateThresh = params['intermediateThresh']
        if 'gaussianKeywords' in params:
            self._gaussianKeywords = params['gaussianKeywords']
        if 'doTsSearch' in params:
            self._doTsSearch = params['doTsSearch']
        if 'tsThresh' in params:
            self._tsThresh = params['tsThresh']
        if 'gaussianTsKeywords' in params:
            self._gaussianTsKeywords = params['gaussianTsKeywords']
        if 'ignoreList' in params:
            self.ignoreList = set(params['ignoreList'])
        if 'activeList' in params:
            self.activeList = set(params['activeList'])
        if 'gsub' in params:
            self._gsub = params['gsub']
        if 'outputLevel' in params:
            self._outputLevel = params['outputLevel']
        if 'save' in params:
            self._save = params['save']
        if 'pathOnly' in params:
            self._pathOnly = params['pathOnly']
        if 'preEnergyScreen' in params:
            self._preEnergyScreen = params['preEnergyScreen']
        if 'matrixForm' in params:
            self._matrixForm = params['matrixForm']

    def canBreakOrFormBond(self, atom, breakOrForm, nElec):
        # Decide if an atom can break or form bond in a certain way (get or lose certain number of electrons)
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

    def checkLuisRule(self, *args, **kwargs):
        for arg in args:
            if type(arg) is int:
                atom = kwargs['mol'].GetAtom(arg)
                pair = (atom.GetAtomicNum(), atom.GetFormalCharge())
                if pair not in self._allowedCoordNum or atomTotalBondOrder(atom) not in self._allowedCoordNum[pair]:
                    return False
            elif type(arg) is tuple:
                if not self.checkLuisRule(*arg, mol=kwargs['mol']):
                    return False
            elif type(arg) is ob.OBMol:
                for atom in ob.OBMolAtomIter(arg):
                    if not self.checkLuisRule(atom, mol=arg):
                        return False
            elif type(arg) is ob.OBBond:
                if not self.checkLuisRule(arg.GetBeginAtom()) or not self.checkLuisRule(arg.GetEndAtom()):
                    return False
            elif type(arg) is ob.OBAtom:
                pair = (arg.GetAtomicNum(), arg.GetFormalCharge())
                if pair not in self._allowedCoordNum or atomTotalBondOrder(atom) not in self._allowedCoordNum[pair]:
                    return False

        return True

    def obeyLuisRule(self, atom, nBondChange, nElectronChange):
        # Decide if an atom can break or form bond in a certain way (get or lose certain number of electrons)
        formalCharge = atom.GetFormalCharge()
        atomicNum = atom.GetAtomicNum()
        nBonds = atomTotalBondOrder(atom)
        if abs(nElectronChange) == 2:
            formalChargeChange = -nElectronChange / 2
        try:
            if nBonds + nBondChange in self._allowedCoordNum[(atomicNum, formalCharge + formalChargeChange)]:
                return 1
            else:
                return 0
        except KeyError:
            return 0

    # def createNewBond(self, mol, atom1, atom2, elecFromAtom1, elecFromAtom2):
    #     # Create a bond in the searching process. Keeps track of bond order, formal charge, self._createdBonds and self._brokenBonds
    #     bond = atom1.GetBond(atom2)
    #     mol.BeginModify()
    #     if bond == None:
    #         bondOrder = 0
    #         bond = mol.NewBond()
    #         bond.SetBegin(atom1)
    #         bond.SetEnd(atom2)
    #         bond.SetBondOrder(1)
    #         atom1.AddBond(bond)
    #         atom2.AddBond(bond)
    #     else:
    #         bondOrder = bond.GetBondOrder()
    #         bond.SetBondOrder(bond.GetBondOrder()+1)
    #     if elecFromAtom1 == 0 and elecFromAtom2 == 2:
    #         atom1.SetFormalCharge(atom1.GetFormalCharge()-1)
    #         atom2.SetFormalCharge(atom2.GetFormalCharge()+1)
    #     elif elecFromAtom1 == 2 and elecFromAtom2 == 0:
    #         atom1.SetFormalCharge(atom1.GetFormalCharge()+1)
    #         atom2.SetFormalCharge(atom2.GetFormalCharge()-1)
    #     mol.EndModify()
    #     if (atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder+1) not in self._brokenBonds:
    #         # If the bond has been broken before, this is just restoring it, so the corresponding record in self._brokenBonds will be deleted and no new record is added.
    #         self._createdBonds.append((atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder))
    #         logging.debug("adding ({}, {}, {}, {}, {}) to createdBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder))
    #     else:
    #         # If the bond has not been broken before, it is a newly changed bond. We add the record to self._createdBonds.
    #         self._brokenBonds.remove((atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder+1))
    #         logging.debug("removing ({}, {}, {}, {}, {}) from brokenBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecFromAtom1, elecFromAtom2, bondOrder+1))
    #     logging.debug("new bond {} - {} is formed".format(atom1.GetIdx(), atom2.GetIdx()))
    #     return bond

    def moveElec(self, mol, atom1Idx, atom2Idx, atom3Idx, nElec):
        mol.BeginModify()
        atom1 = None if atom1Idx is None else mol.GetAtom(atom1Idx)
        atom2 = None if atom2Idx is None else mol.GetAtom(atom2Idx)
        atom3 = None if atom3Idx is None else mol.GetAtom(atom3Idx)
        if atom1 is None: # lone pair (atom2) to bond (atom2 - atom3)
            atom2.SetFormalCharge(atom2.GetFormalCharge()+1)
            # ob.OBPairData(atom2.GetData('nLonePair')).SetValue(str(int(ob.OBPairData(atom.GetData('nLonePair')).GetValue())-2))
            bond = mol.GetBond(atom2, atom3)
            if bond is None:
                mol.AddBond(atom2.GetIdx(), atom3.GetIdx(), 1)
            else:
                bond.SetBondOrder(bond.GetBondOrder()+1)
            atom3.SetFormalCharge(atom3.GetFormalCharge()-1)
        elif atom3 is None: # bond (atom1 - atom2) to lone pair (atom2)
            bond = mol.GetBond(atom1, atom2)
            bondOrder = bond.GetBondOrder()
            print('bondorder is {}'.format(bondOrder))
            if bondOrder == 1:
                mol.DeleteBond(bond)
            else:
                bond.SetBondOrder(bondOrder - 1)
            atom1.SetFormalCharge(atom1.GetFormalCharge()+1)
            atom2.SetFormalCharge(atom2.GetFormalCharge()-1)
            # ob.OBPairData(atom2.GetData('nLonePair')).SetValue(str(int(ob.OBPairData(atom.GetData('nLonePair')).GetValue())+2))
        else: # bond1 (atom1 - atom2) to bond2 (atom2 - atom3)
            bond1 = mol.GetBond(atom1, atom2)
            bond2 = mol.GetBond(atom2, atom3)
            atom1.SetFormalCharge(atom2.GetFormalCharge()+1)
            atom3.SetFormalCharge(atom3.GetFormalCharge()-1)
            bondOrder1 = bond1.GetBondOrder()
            if bondOrder1 == 1:
                mol.DeleteBond(bond1)
            else:
                bond1.SetBondOrder(bondOrder1-1)
            if bond2 is None:
                mol.AddBond(atom2.GetIdx(), atom3.GetIdx(), 1)
            else:
                bond2.SetBondOrder(bond2.GetBondOrder()+1)
        mol.EndModify()
        printMol(mol, printOut=True)
        for bond in ob.OBMolBondIter(mol):
            printBond(bond)

    def changeFormalCharge(self, mol, idx, change):
        atom = mol.GetAtom(idx)
        atom.SetFormalCharge(atom.GetFormalCharge()+change)

    def changeBondOrder(self, mol, i, j, change):
        bond = mol.GetBond(i, j)
        if bond is None:
            mol.AddBond(i, j, 1)
        else:
            bondOrder = bond.GetBondOrder()
            if bondOrder == 1 and change == -1:
                mol.DeleteBond(bond)
            else:
                bond.SetBondOrder(bondOrder + change)


    def oxidize(self, mol, eSource):
        if type(eSource) is int:
            self.changeFormalCharge(mol, eSource, +2)
        elif type(eSource) is tuple:
            i, j = eSource
            self.changeBondOrder(mol, i, j, -1)
            self.changeFormalCharge(mol, i, +1)
            self.changeFormalCharge(mol, j, +1)

    def reduce(self, mol, eTarget):
        if type(eTarget) is int:
            self.changeFormalCharge(mol, eTarget, -2)
        elif type(eTarget) is tuple:
            i, j = eTarget
            self.changeBondOrder(mol, i, j, +1)
            self.changeFormalCharge(mol, i, -1)
            self.changeFormalCharge(mol, j, -1)

    # def breakBond(self, mol, atom1, atom2, elecToAtom1, elecToAtom2):
    #     # Break a bond in the searching process. Keeps track of bond order, formal charge, self._createdBonds and self._brokenBonds
    #     bond = atom1.GetBond(atom2)
    #     if bond != None:
    #         mol.BeginModify()
    #         bondOrder = bond.GetBondOrder()
    #         if bond.GetBondOrder() == 1:
    #             mol.DeleteBond(bond)
    #         elif bond.GetBondOrder() >= 2:
    #             bond.SetBondOrder(bond.GetBondOrder()-1)
    #         if elecToAtom1 == 0 and elecToAtom2 == 2:
    #             atom1.SetFormalCharge(atom1.GetFormalCharge()+1)
    #             atom2.SetFormalCharge(atom2.GetFormalCharge()-1)
    #         elif elecToAtom1 == 2 and elecToAtom2 == 0:
    #             atom1.SetFormalCharge(atom1.GetFormalCharge()-1)
    #             atom2.SetFormalCharge(atom2.GetFormalCharge()+1)
    #         mol.EndModify()
    #         logging.debug("bond {} - {} is broken".format(atom1.GetIdx(), atom2.GetIdx()))
    #         if (atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder-1) not in self._createdBonds:
    #             logging.debug("adding ({}, {}, {}, {}, {}) to brokenBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder))
    #             self._brokenBonds.append((atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder))
    #         else:
    #             logging.debug("removing ({}, {}, {}, {}, {}) from createdBonds".format(atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder-1))
    #             self._createdBonds.remove((atom1.GetIdx(), atom2.GetIdx(), elecToAtom1, elecToAtom2, bondOrder-1))
    #         return True
    #     else:
    #         logging.warning("No bond is found between atom {} and atom {}".format(atom1.GetIdx(), atom2.GetIdx()))
    #         return False

    # def isInvalidStructure(self, mol):
    #     # A structure will be invalid if two adjacent atoms both are charged.
    #     for atom1 in ob.OBMolAtomIter(mol):
    #         if atom1.GetFormalCharge() != 0:
    #             for atom2 in ob.OBMolAtomIter(mol):
    #                 if atom1.GetIdx() != atom2.GetIdx() and atom2.GetFormalCharge() != 0:
    #                     return True
    #         nBonds = 0
    #         for bond in ob.OBAtomBondIter(atom1):
    #             nBonds += bond.GetBondOrder()
    #         if atom1.GetAtomicNum() == 35 and nBonds == 2:
    #             for atom2 in ob.OBAtomAtomIter(atom1):
    #                 if atom2.GetAtomicNum() == 1:
    #                     return True
    #     return False

    def doGaussian(self, mol, fullFileName, smiles):
        conn = sqlite3.connect('reactionroute.db')
        cursor = conn.cursor()
        records = cursor.execute('select energy from jobArchive where smiles == ? and keywords == ?',
                                       (smiles, self._gaussianKeywords))
        logging.debug('database connection established')
        record = records.fetchone()
        if record:
            logging.debug('{} record found in the database'.format(smiles))
            print('{} record found in the database'.format(smiles))
            conn.close()
            return record[0]
        else:
            logging.debug('{} not found in the database, doing calculations...'.format(smiles))
        molCopy = ob.OBMol(mol)
        molCopy.SetTitle("ReactionRoute")
        inputFile = open("gaussian/"+fullFileName+".gjf", 'w')
        op3d = ob.OBOp.FindType("gen3d")
        op3d.Do(molCopy, '3')
        inputFile.write(printMol(molCopy, fileFormat = "gjf", keywords = self._gaussianKeywords))
        inputFile.close()
        gaussianCall = ''
        for i, c in enumerate(fullFileName):
            if (c == '(' or c == ')' or c == '$') and i > 0 and fullFileName[i-1] != '\\':
                gaussianCall += '\\'
            gaussianCall += c
        if self._gsub:
            print("gsub -fastq gaussian/"+gaussianCall+".gjf")
            logging.info("gsub -fastq gaussian/"+gaussianCall+".gjf")
            output = subprocess.check_output('cd gaussian; gsub -fastq '+gaussianCall+'.gjf; cd ..', shell=True)
            # print output
            jobId = output.split()[7]
            while True:
                time.sleep(10)
                outputQstat = subprocess.check_output('qstat', shell=True)
                if jobId not in outputQstat:
                    break
        else:
            print("gdv gaussian/"+gaussianCall+".gjf")
            logging.info("gdv gaussian/"+gaussianCall+".gjf")
            os.system("gdv gaussian/"+gaussianCall+".gjf")

        molDict = logParser('gaussian/'+fullFileName+'.log')
        if molDict['result'] == 'Normal':
            cursor.execute('insert into jobArchive (smiles, keywords, formula, energy) values (?, ?, ?, ?)',
                           (smiles, self._gaussianKeywords, molDict['formula'], molDict['energy']))
            molCopyEnergy = molDict['energy']
        else:
            logging.error("First gaussian run failed. Trying second time with op3d.do(frag, 'dist')")
            inputFile = open("gaussian/"+fullFileName+".gjf", 'w')
            op3d = ob.OBOp.FindType("gen3d")
            op3d.Do(molCopy, 'dist')
            inputFile.write(printMol(molCopy, fileFormat = "gjf", keywords = self._gaussianKeywords))
            inputFile.close()
            os.system("gdv gaussian/"+gaussianCall+".gjf")

            molDict = logParser('gaussian/'+fullFileName+'.log')
            if molDict['result'] == 'Normal':
                cursor.execute('insert into jobArchive (smiles, keywords, formula, energy) values (?, ?, ?, ?)',
                               (smiles, self._gaussianKeywords, molDict['formula'], molDict['energy']))
                molCopyEnergy = molDict['energy']
            else:
                cursor.execute('insert into jobArchive (smiles, keywords, formula, energy) values (?, ?, ?, ?)',
                           (smiles, self._gaussianKeywords, 'error', -999999999.0))
                logging.error("Second gaussian run failed. ")
                molCopyEnergy = -999999999.0
        conn.commit()
        conn.close()
        return molCopyEnergy

    def computeQMEnergy(self, mol, software, method, fragmentEnergyMap = None):
        if not os.path.isdir(software):
            os.system("mkdir "+software)
        molCopy = strToMol('smi', printMol(mol, 'smi'))
        molCopy.AddHydrogens()
        smiles = getCanonicalSmiles(molCopy)
        fileName = smilesToFilename(smiles)
        if software.lower() == "gaussian" or software.lower() == "gauss":
            logging.debug('using Gaussian to calculate...')
            logging.debug('the molecule that is about to be separated is {}'.format(smiles))
            # printMol(molCopy, fileFormat = "sdf", printOut = True)
            fragments = molCopy.Separate()
            logging.debug('after separate')
            logging.debug('there are {} fragments'.format(len(fragments)))
            if len(fragments) >= 2:
                energySum = 0.0
                for i, frag in enumerate(fragments):
                    fragSmiles = getCanonicalSmiles(frag)
                    logging.debug('fragment{} = {}'.format(i, fragSmiles))
                    if fragSmiles in fragmentEnergyMap:
                        frag.SetEnergy(fragmentEnergyMap[fragSmiles])
                        logging.debug("this fragment's energy has been calculated. It's %d kcal/mol"%(fragmentEnergyMap[fragSmiles]))
                    else:
                        fragmentEnergy = self.doGaussian(frag, fileName+str(i), fragSmiles)
                        logging.debug("the energy of this fragment is %d kcal/mol"%(fragmentEnergy))
                        frag.SetEnergy(fragmentEnergy)
                        fragmentEnergyMap[fragSmiles] = fragmentEnergy
                    energySum += fragmentEnergyMap[fragSmiles]
                logging.info("The energy of the molecule is %d kcal/mol"%(energySum))
                return energySum
            else:
                return self.doGaussian(molCopy, fileName, smiles)

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

    # def getOxidations(self, mat, compact=True): # O(n^2) time, O(n) space
    #     oxidations = set()
    #     for i in range(1, self.nAtom):
    #         for j in range(1, i):
    #             if mat[i][j] >= 1:
    #                 oxidations.add((i, j))
    #     for i in range(1, self.nAtom):
    #         if mat[i][i] >= 2:
    #             oxidations.add((i, i))
    #
    #     return oxidations
    #
    # def checkMat(self, mat, delta=None):
    #     if delta is not None:
    #         for i, j in delta:
    #             mat[i][j] += delta[(i, j)]
    #     result = True
    #     for i in range(1, self.nAtom + 1):
    #         nBonds = sum(mat[i][1:]) - mat[i][i]
    #         formalCharge = numValenceElectron(mat[i][0]) - nBonds + mat[i][i]
    #         if nBonds not in self._allowedCoordNum[(mat[i][0], formalCharge)]:
    #             result = False
    #             break
    #     if delta is not None:
    #         for i, j in delta:
    #             mat[i][j] -= delta[(i, j)]
    #     return result

    def checkChangeTable(self, molMat, changeTable, tboChange, fcChange):
        for atom in tboChange.keys() + fcChange.keys():
            if molMat[self.nAtom+1][atom] + tboChange[atom] not in self._allowedCoordNum.get((molMat[0][atom], molMat[self.nAtom+2][atom] + fcChange[atom]), []):
                return False
        return True

    def applyChanges(self, molMat, changeTable, tboChange, fcChange):
        for item in changeTable.items():
            molMat[item[0][0]][item[0][1]] += item[1]
        for item in tboChange.items():
            molMat[self.nAtom+1][item[0]] += item[1]
        for item in fcChange.items():
            molMat[self.nAtom+2][item[0]] += item[1]

    def isomerSearch(self):
        reactantMol = strToMol('smi', self._reactantString)
        self._reactantString = getCanonicalSmiles(reactantMol)
        logging.info("reactant = {}".format(self._reactantString))
        reactantMol.AddHydrogens()
        printMol(reactantMol, fileFormat = "gjf", printOut = True)
        if not self._noProduct:
            productMol = strToMol('smi', self._productString)
            self._productString = getCanonicalSmiles(productMol)
            logging.info("product = {}".format(self._productString))

        self.nAtom = reactantMol.NumAtoms()

        if self.activeList and not self.ignoreList:
            allset = set(range(1, self.nAtom+1))
            self.ignoreList = allset - self.activeList
        elif self.ignoreList and not self.activeList:
            allset = set(range(1, self.nAtom+1))
            self.activeList = allset - self.ignoreList
        elif not self.activeList and not self.ignoreList:
            self.activeList = set(range(1, self.nAtom+1))

        logging.info("ignoreList = {}".format(self.ignoreList))
        q = deque()
        head = ReactionGraphNode(mol=reactantMol)
        q.append(head)
        self._reactionMap[self._reactantString] = head
        self._energyMap = {self._reactantString: 0.0}
        if self._doCalculation:
            self._energyBaseLine = self.computeQMEnergy(reactantMol, "gaussian", self._gaussianKeywords, self._fragmentEnergyMap)
        else:
            self._energyBaseLine = 0.0
        head.energy = 0.0
        nStep = 0
        while q: # start Breadth-First-Search
            qSize = len(q)
            nStep += 1
            logging.info("=========================================================")
            logging.info("                     nStep = "+str(nStep))
            if nStep >= self._maxStep or nStep > self._targetLeastStep + self._maxExtraStep:
                logging.info("step number {}, exceeding maximum step {}".format(nStep, min(self._maxStep, self._targetLeastStep+self._maxExtraStep)))
                break
            for nNode in range(qSize): # process intermediates one generation at a time
                logging.info("***************************************************")
                logging.info("             processing a new molecule")
                currNode = q.popleft()
                if currNode.smiles == self._productString:
                    continue
                currMol = ob.OBMol(currNode.mol)

                oxidations = {'bond': set(), 'atom': set()}
                for atom in ob.OBMolAtomIter(currMol):
                    nLonePair = numValenceElectron(atom.GetAtomicNum()) - atomTotalBondOrder(atom) + atom.GetFormalCharge()
                    if nLonePair > 0:
                        oxidations['atom'].add(atom)
                for bond in ob.OBMolBondIter(currMol):
                    oxidations['bond'].add(bond)

                def addMol(oxidized, reduced, tempMat=None):
                    logging.debug('in addMol')
                    logging.debug('oxidized: {}\nreduced: {}'.format(oxidized, reduced))
                    if self._matrixForm:
                        # logging.debug('\n'+str(tempMat))
                        newMol = matToMol(tempMat)
                    newMolSmiles = getCanonicalSmiles(newMol)
                    logging.info("newSmiles = "+newMolSmiles)
                    if newMolSmiles == self._productString:
                        logging.info("target found!!!")
                        self._targetLeastStep = nStep
                        self._targetFound = True
                    # if self._structureScreen:
                    #     if newMolSmiles in self._invalidStructures:
                    #         logging.info("This molecule is invalid according to isInvalidStructure, not adding it")
                    #         return
                    #     elif self.isInvalidStructure(newMol):
                    #         logging.info("This molecule is invalid according to isInvalidStructure, not adding it")
                    #         self._invalidStructures.add(newMolSmiles)
                    #         return
                    if newMolSmiles not in self._reactionMap:
                        logging.info("new molecule found! Adding it to the map")
                        if self._doCalculation and self._preEnergyScreen:
                            absoluteEnergy = self.computeQMEnergy(newMol, "gaussian", self._gaussianKeywords,self._fragmentEnergyMap)
                            logging.debug("absoluteEnergy is %f kcal/mol"%(absoluteEnergy))
                            logging.debug("energy base line is "+str(self._energyBaseLine))
                            energy = absoluteEnergy - self._energyBaseLine
                            logging.info("relative energy is %f kcal/mol"%(energy))
                            self._energyMap[newMolSmiles] = energy

                            logging.info("Screening energy")
                            if energy - currNode.energy < self._intermediateThresh:
                                logging.info("low energy intermediate found, adding it to the map...")
                                newNode = ReactionGraphNode(mol=newMol, depth=nStep)
                                newNode.energy = energy
                                self._reactionMap[newMolSmiles] = newNode
                                if newMolSmiles not in currNode.neighbors:
                                    logging.info('adding the edge')
                                    currNode.neighbors[newMolSmiles] = ReactionGraphEdge(currNode, newNode, oxidized, reduced)
                                    q.append(newNode)
                            else:
                                logging.info("energy too high, discarded")
                        else:
                            newNode = ReactionGraphNode(mol=newMol, depth=nStep)
                            self._reactionMap[newMolSmiles] = newNode
                            if newMolSmiles not in currNode.neighbors:
                                logging.info('adding the edge')
                                currNode.neighbors[newMolSmiles] = ReactionGraphEdge(currNode, newNode, oxidized, reduced)
                                q.append(newNode)
                    else:
                        logging.info("This molecule has been processed")
                        if currNode.smiles != newMolSmiles:
                            # self._reactionMap[newMolSmiles].depths.append(nStep)
                            if newMolSmiles not in currNode.neighbors:
                                logging.debug("adding {} - {}".format(currNode.smiles, newMolSmiles))
                                logging.debug("Although this molecule has been added to reactionMap, it reveals a new route. Adding only the edge...")
                                currNode.neighbors[newMolSmiles] = ReactionGraphEdge(currNode, self._reactionMap[newMolSmiles], oxidized, reduced)
                    logging.debug("finish adding this molecule, no matter added or not")

                if self._matrixForm:
                    if self._filterFc:
                        molMat = molToMat(currMol)
                        logging.debug('\n'+str(molMat))
                        eSources = set()
                        for i in self.activeList:
                            if molMat[i][i] > 0:
                                eSources.add((i,))
                            for j in self.activeList:
                                if j < i and molMat[i][j] > 0:
                                    eSources.add((i, j))

                        def countChanges(atoms, redox): # redox = -1 if oxidation else 1
                            if len(atoms) is 1:
                                i = atoms[0]
                                changeTable[(i, i)] += 2 * redox
                                fcChange[i] -= 2 * redox
                            else:
                                i, j = atoms
                                changeTable[(i, j)] += 1 * redox
                                changeTable[(j, i)] += 1 * redox
                                fcChange[i] -= 1 * redox
                                fcChange[j] -= 1 * redox
                                tboChange[i] += 1 * redox
                                tboChange[j] += 1 * redox

                        logging.debug('one pair')
                        for eSource1 in eSources:
                            canReduce = set()
                            eTargets = set()
                            for i in self.activeList:
                                if molMat[self.nAtom+2][i] > self._minFc[molMat[0][i]]:
                                    canReduce.add(i)
                            for atom in eSource1:
                                canReduce.add(atom)
                            canReduce = list(canReduce)
                            for i in range(len(canReduce)):
                                eTargets.add((canReduce[i], ))
                                for j in range(i):
                                    eTargets.add((canReduce[i], canReduce[j]))
                            logging.debug('eSource1: {}'.format(eSource1))
                            logging.debug('eTargets: {}'.format(eTargets))
                            for eTarget1 in eTargets:
                                if set(eTarget1) == set(eSource1):
                                    continue
                                changeTable = defaultdict(int)
                                tboChange = defaultdict(int) # total bond order change
                                fcChange = defaultdict(int) # formal charge change
                                countChanges(eSource1, -1)
                                countChanges(eTarget1, 1)
                                if self.checkChangeTable(molMat, changeTable, tboChange, fcChange):
                                    # logging.debug('\n            This molecule is qualified. -----------------------    ')
                                    tempMat = np.array(molMat)
                                    self.applyChanges(tempMat, changeTable, tboChange, fcChange)
                                    # logging.debug('\n'+str(tempMat))
                                    addMol([eSource1], [eTarget1], tempMat)
                            logging.debug('finishing this eTargets')

                        logging.debug('two pairs')
                        for eSource1 in eSources:
                            for eSource2 in eSources:
                                if set(eSource1) == set(eSource2): # we don't want to oxidize a specie twice. e.g. triple bond -> single bond
                                    continue
                                eTargets = set()
                                canReduce = set()
                                for i in self.activeList:
                                    if molMat[self.nAtom+2][i] > self._minFc[molMat[0][i]]:
                                        canReduce.add(i)
                                for atom in eSource1:
                                    canReduce.add(atom)
                                for atom in eSource2:
                                    canReduce.add(atom)
                                canReduce = list(canReduce)
                                for i in range(len(canReduce)):
                                    eTargets.add((canReduce[i], ))
                                    for j in range(i):
                                        eTargets.add((canReduce[i], canReduce[j]))
                                logging.debug('eSource1 = {}, eSource2 = {}'.format(eSource1, eSource2))
                                logging.debug('eTargets: {}'.format(eTargets))
                                for eTarget1 in eTargets:
                                    for eTarget2 in eTargets:
                                        if set(eTarget1) == set(eSource1) or set(eTarget2) == set(eSource2) or \
                                           set(eTarget1) == set(eSource2) or set(eTarget2) == set(eSource1):
                                            continue
                                        changeTable = defaultdict(int)
                                        tboChange = defaultdict(int) # total bond order change
                                        fcChange = defaultdict(int) # formal charge change
                                        countChanges(eSource1, -1)
                                        countChanges(eTarget1, 1)
                                        countChanges(eSource2, -1)
                                        countChanges(eTarget2, 1)
                                        if self.checkChangeTable(molMat, changeTable, tboChange, fcChange):
                                            # logging.debug('\n            This molecule is qualified. -----------------------    ')
                                            tempMat = np.array(molMat)
                                            self.applyChanges(tempMat, changeTable, tboChange, fcChange)
                                            # logging.debug('\n'+str(tempMat))
                                            addMol([eSource1, eSource2], [eTarget1, eTarget2], tempMat)
                                logging.debug('finishing this eTargets')



                    else: # no filter at ox/red level
                        molMat = molToMat(currMol)
                        logging.debug('\n'+str(molMat))
                        eSources, eTargets = set(), set()
                        for i in range(1, self.nAtom+1):
                            if molMat[i][i] > 0:
                                eSources.add((i,))
                            eTargets.add((i,))
                            for j in range(1, i):
                                if molMat[i][j] > 0:
                                    eSources.add((i, j))
                                eTargets.add((i, j))
                        logging.debug(eTargets)

                        def countChanges(atoms, redox): # redox = -1 if oxidation else 1
                            if len(atoms) is 1:
                                changeTable[(atoms[0], atoms[0])] += 2 * redox
                                fcChange[atoms[0]] -= 2 * redox
                            else:
                                changeTable[atoms[0], atoms[1]] += 1 * redox
                                changeTable[atoms[1], atoms[0]] += 1 * redox
                                fcChange[atoms[0]] -= 1 * redox
                                fcChange[atoms[1]] -= 1 * redox
                                tboChange[atoms[0]] += 1 * redox
                                tboChange[atoms[1]] += 1 * redox

                        for eSource1 in eSources:
                            for eTarget1 in eTargets:
                                changeTable = defaultdict(int)
                                tboChange = defaultdict(int) # total bond order change
                                fcChange = defaultdict(int) # formal charge change
                                countChanges(eSource1, -1)
                                countChanges(eTarget1, 1)
                                if self.checkChangeTable(molMat, changeTable, tboChange, fcChange):
                                    # logging.debug('\n            This molecule is qualified. -----------------------    ')
                                    tempMat = np.array(molMat)
                                    self.applyChanges(tempMat, changeTable, tboChange, fcChange)
                                    # logging.debug('\n'+str(tempMat))
                                    addMol([eSource1], [eTarget1], tempMat)

                        for eSource1 in eSources:
                            for eSource2 in eSources:
                                for eTarget1 in eTargets:
                                    for eTarget2 in eTargets:
                                        changeTable = defaultdict(int)
                                        tboChange = defaultdict(int) # total bond order change
                                        fcChange = defaultdict(int) # formal charge change
                                        countChanges(eSource1, -1)
                                        countChanges(eTarget1, 1)
                                        countChanges(eSource2, -1)
                                        countChanges(eTarget2, 1)
                                        if self.checkChangeTable(molMat, changeTable, tboChange, fcChange):
                                            # logging.debug('\n            This molecule is qualified. -----------------------    ')
                                            tempMat = np.array(molMat)
                                            self.applyChanges(tempMat, changeTable, tboChange, fcChange)
                                            # logging.debug('\n'+str(tempMat))
                                            addMol([eSource1, eSource2], [eTarget1, eTarget2], tempMat)

                else:
                    eSources = set()
                    for atom in oxidations['atom']:
                        eSources.add(atom.GetIdx())
                    for bond in oxidations['bond']:
                        eSources.add((bond.GetBeginAtom().GetIdx(), bond.GetEndAtom().GetIdx()))
                    eTargets = set()
                    for i in range(1, self.nAtom+1):
                        eTargets.add(i)
                        for j in range(i+1, self.nAtom+1):
                            eTargets.add((i, j))

                    for eSource1 in eSources:
                        for eTarget1 in eTargets:
                            newMol = ob.OBMol(currMol)
                            self.oxidize(newMol, eSource1)
                            self.reduce(newMol, eTarget1)
                            if self.checkLuisRule(eSource1, eTarget1, mol=newMol):
                                addMol([eSource1], [eTarget1])

                    for eSource1 in eSources:
                        for eSource2 in eSources:
                            for eTarget1 in eTargets:
                                for eTarget2 in eTargets:
                                    newMol = ob.OBMol(currMol)
                                    self.oxidize(newMol, eSource1)
                                    self.oxidize(newMol, eSource2)
                                    self.reduce(newMol, eTarget1)
                                    self.reduce(newMol, eTarget2)
                                    if self.checkLuisRule(eSource1, eSource2, eTarget1, eTarget2, mol=newMol):
                                        addMol([eSource1, eSource2], [eTarget1, eTarget2])


                # Now consider all possible elementary reaction rule.
                # Make a bond. Only considering two electron transfer.
                # for atom1 in zeroElecGivers:
                #     for atom2 in twoElecGivers:
                #         if atom1 is not atom2:
                #             logging.debug("<bondBreaking, bondForming> = <0,1>")
                #             self.createNewBond(newMol, atom1, atom2, 0, 2)
                #             addMol()
                #             logging.debug("restoring")
                #             self.breakBond(newMol, atom1, atom2, 0, 2)
                #
                # for atom1 in twoElecTakers:
                #     # first bond changing is bond breaking, let's start looping over the atom that takes two electrons.
                #     logging.info("--------attempting non-cyclic concerted two bonds breakings and two bond formations---------")
                #     logging.debug("atom1 is {}, {}".format(atom1.GetIdx(), atom1.GetAtomicNum()))
                #     bondsOfAtom1 = [bond for bond in ob.OBAtomBondIter(atom1)]
                #     for brokenBond1 in bondsOfAtom1:
                #         atom2 = brokenBond1.GetNbrAtom(atom1)
                #         logging.debug("atom2 is {}, {}".format(atom2.GetIdx(), atom2.GetAtomicNum()))
                #         if atom2 is None:
                #             logging.error("atom2 is None!!!!")
                #         if atom2.GetIdx() in self.ignoreList:
                #             continue
                #         logging.debug("try breaking first bond {} - {}".format(atom1.GetIdx(), atom2.GetIdx()))
                #         # import pdb; pdb.set_trace()
                #         for tempAtom in zeroElecTakers:
                #             if atom2.GetIdx() == tempAtom.GetIdx():
                #                 logging.debug("if finishing bond...")
                #                 if self.breakBond(newMol, atom1, atom2, 2, 0) is None:
                #                     logging.warning("bond {} - {} breaking failed".format(atom1.GetIdx(),atom2.GetIdx()))
                #                     continue
                #                 addMol()
                #                 logging.debug("restoring : ")
                #                 self.createNewBond(newMol, atom1, atom2, 2, 0)
                #         logging.debug("if not finishing... breaking first bond {} - {}".format(atom1.GetIdx(), atom2.GetIdx()))
                #         if self.breakBond(newMol, atom1, atom2, 2, 0) is None:
                #             logging.warning("bond {} - {} breaking failed".format(atom1.GetIdx(),atom2.GetIdx()))
                #             continue
                #
                #         for atom3 in ob.OBMolAtomIter(newMol):
                #             logging.debug("atom3 is {}, {}".format(atom3.GetIdx(), atom3.GetAtomicNum()))
                #             if atom3.GetIdx() in self.ignoreList or atom3 == atom1 or atom3 == atom2:
                #                 continue
                #             logging.debug("try making first bond {} - {}".format(atom2.GetIdx(), atom3.GetIdx()))
                #             for tempAtom in twoElecGivers:
                #                 if atom3.GetIdx() == tempAtom.GetIdx():
                #                     logging.debug("if finishing bond...")
                #                     if self.createNewBond(newMol, atom2, atom3, 0, 2) is None:
                #                         logging.warning("bond {} - {} creation failed".format(atom2.GetIdx(),atom3.GetIdx()))
                #                         continue
                #                     addMol()
                #                     logging.debug("restoring...")
                #                     self.breakBond(newMol, atom2, atom3, 0, 2)
                #             logging.debug("if not finishing... creating first bond {} - {}".format(atom2.GetIdx(), atom3.GetIdx()))
                #             formedBond1 = self.createNewBond(newMol, atom2, atom3, 0, 2)
                #             if formedBond1 is None:
                #                 logging.warning("bond {} - {} creation failed".format(atom2.GetIdx(), atom3.GetIdx()))
                #                 continue
                #             nNewBond = 0
                #             if formedBond1.GetBondOrder() == 1:
                #                 nNewBond += 1
                #             bondsOfAtom3 = [bond for bond in ob.OBAtomBondIter(atom3)]
                #             for brokenBond2 in bondsOfAtom3:
                #                 atom4 = brokenBond2.GetNbrAtom(atom3)
                #                 logging.debug("atom4 is {}, {}".format(atom4.GetIdx(), atom4.GetAtomicNum()))
                #                 if atom4.GetIdx() in self.ignoreList or atom4 == atom2 or atom4 == atom1:
                #                     continue
                #                 logging.debug("try breaking second bond {} - {}".format(atom3.GetIdx(), atom4.GetIdx()))
                #                 for tempAtom in zeroElecTakers:
                #                     if atom4.GetIdx() == tempAtom.GetIdx():
                #                         logging.debug("if finishing bond...")
                #                         if self.breakBond(newMol, atom3, atom4, 2, 0) is None:
                #                             logging.warning("bond {} - {} breaking failed".format(atom3.GetIdx(),atom4.GetIdx()))
                #                             continue
                #                         addMol()
                #                         logging.debug("restoring...")
                #                         self.createNewBond(newMol, atom3, atom4, 2, 0)
                #                 logging.debug("if not finishing... breaking second bond {} - {}".format(atom3.GetIdx(), atom4.GetIdx()))
                #                 if self.breakBond(newMol, atom3, atom4, 2, 0) is None:
                #                     logging.warning("bond {} - {} breaking failed".format(atom3.GetIdx(),atom4.GetIdx()))
                #                     continue
                #                 # for tempAtom in twoElecGivers:
                #                 #     if atom5.GetIdx() == tempAtom.GetIdx():
                #                 for atom5 in twoElecGivers:
                #                     logging.debug("atom5 is {}, {}".format(atom5.GetIdx(), atom5.GetAtomicNum()))
                #                     if atom5 == atom1 or atom5 == atom3 or atom5 == atom4:
                #                         continue
                #                     logging.debug("try making second bond {} - {}".format(atom4.GetIdx(), atom5.GetIdx()))
                #                     formedBond2 = self.createNewBond(newMol, atom4, atom5, 0, 2)
                #                     if formedBond2 is None:
                #                         logging.warning("bond {} - {} creation failed".format(atom4.GetIdx(), atom5.GetIdx()))
                #                         continue
                #                     nNewBond2 = nNewBond
                #                     if formedBond2.GetBondOrder() == 1:
                #                         nNewBond2 = nNewBond2 + 1
                #                     if nNewBond2 >= 2 and atom5.GetIdx() != atom2.GetIdx():
                #                         logging.debug("nNewBond2 = {}".format(nNewBond2))
                #                         logging.debug("we have two newly formed single bonds now, trying to rewind")
                #                         logging.debug("restoring...")
                #                         self.breakBond(newMol, atom4, atom5, 0, 2)
                #                         continue
                #                     addMol()
                #                     logging.debug("restoring...")
                #                     self.breakBond(newMol, atom4, atom5, 0, 2)
                #                 logging.debug("restoring...")
                #                 self.createNewBond(newMol, atom3, atom4, 2, 0)
                #             logging.debug("restoring...")
                #             self.breakBond(newMol, atom2, atom3, 0, 2)
                #         logging.debug("restoring...")
                #         self.createNewBond(newMol, atom1, atom2, 2, 0)
                #
                # for atom1 in ob.OBMolAtomIter(newMol):
                #     logging.debug("atom1 is {}, {}".format(atom1.GetIdx(), atom1.GetAtomicNum()))
                #     if atom1.GetIdx() in self.ignoreList:
                #         logging.debug("atom1 is ignored")
                #         continue
                #     logging.info("--------attempting cyclic concerted two bonds breakings and two bond formations----------")
                #     bondsOfAtom1 = [bond for bond in ob.OBAtomBondIter(atom1)]
                #     for brokenBond1 in bondsOfAtom1:
                #         atom2 = brokenBond1.GetNbrAtom(atom1)
                #         logging.debug("atom2 is {}, {}".format(atom2.GetIdx(), atom2.GetAtomicNum()))
                #         if atom2.GetIdx() in self.ignoreList:
                #             logging.debug("atom2 is ignored")
                #             continue
                #         logging.debug("try breaking first bond {} - {}".format(atom1.GetIdx(), atom2.GetIdx()))
                #         if self.breakBond(newMol, atom1, atom2, 2, 0) is None:
                #             logging.warning("bond {} - {} breaking failed".format(atom1.GetIdx(),atom2.GetIdx()))
                #             continue
                #         for atom3 in ob.OBMolAtomIter(newMol):
                #             if atom3.GetIdx() in self.ignoreList:
                #                 logging.debug("atom3 is ignored")
                #                 continue
                #             if atom3 == atom1 or atom3 == atom2:
                #                 continue
                #             logging.debug("try making first bond {} - {}".format(atom2.GetIdx(), atom3.GetIdx()))
                #             formedBond1 = self.createNewBond(newMol, atom2, atom3, 0, 2)
                #             if formedBond1 is None:
                #                 logging.warning("bond {} - {} creation failed".format(atom2.GetIdx(), atom3.GetIdx()))
                #                 continue
                #             nNewBond = 0
                #             if formedBond1.GetBondOrder() == 1:
                #                 nNewBond += 1
                #             bondsOfAtom3 = [bond for bond in ob.OBAtomBondIter(atom3)]
                #             for brokenBond2 in bondsOfAtom3:
                #                 atom4 = brokenBond2.GetNbrAtom(atom3)
                #                 logging.debug("atom4 is {}, {}".format(atom4.GetIdx(), atom4.GetAtomicNum()))
                #                 if atom4.GetIdx() in self.ignoreList or atom4 == atom2 or atom4 == atom1:
                #                     continue
                #                 logging.debug("try breaking second bond {} - {}".format(atom3.GetIdx(), atom4.GetIdx()))
                #                 if self.breakBond(newMol, atom3, atom4, 2, 0) is None:
                #                     logging.warning("bond {} - {} breaking failed".format(atom3.GetIdx(),atom4.GetIdx()))
                #                     continue
                #                 logging.debug("try making second bond {} - {}".format(atom4.GetIdx(), atom1.GetIdx()))
                #                 formedBond2 = self.createNewBond(newMol, atom4, atom1, 0, 2)
                #                 if formedBond2 is None:
                #                     logging.warning("bond {} - {} creation failed".format(atom4.GetIdx(),atom1.GetIdx()))
                #                 nNewBond2 = nNewBond
                #                 if formedBond2.GetBondOrder() == 1:
                #                     nNewBond2 += 1
                #                 if nNewBond2 >= 2 and (newMol.GetBond(atom1, atom3) or newMol.GetBond(atom2, atom4)):
                #                     # 1 - 2 break      1--2          1  2
                #                     # 2 - 3 form              --->   |  |
                #                     # 3 - 4 break      4--3          4  3
                #                     # 4 - 1 form
                #                     # This is allowed only if there is no bond between 1 - 3 and 2 - 4.
                #                     # If 1 - 3 were bonded this would just be a group exchange of 2 and 4. The same for 2 - 4.
                #                     logging.debug("simple group exchange is not allowed. rewinding...")
                #                     logging.debug("restoring...")
                #                     self.breakBond(newMol, atom4, atom1, 0, 2)
                #                     self.createNewBond(newMol, atom3, atom4, 2, 0)
                #                     continue
                #                 addMol()
                #                 logging.debug("restoring...")
                #                 self.breakBond(newMol, atom4, atom1, 0, 2)
                #                 logging.debug("restoring...")
                #                 self.createNewBond(newMol, atom3, atom4, 2, 0)
                #             logging.debug("restoring...")
                #             self.breakBond(newMol, atom2, atom3, 0, 2)
                #         logging.debug("restoring...")
                #         self.createNewBond(newMol, atom1, atom2, 2, 0)


        if not self._noProduct:
            logging.info("targetSmiles = "+self._productString)
        else:
            logging.info('no target provided')
        logging.info("targetLeastStep = {}".format(self._targetLeastStep))
        logging.info("===============End of the isomer search===============")
        if self._productString in self._reactionMap:
            return head, self._reactionMap[self._productString]
        else:
            logging.info("target not found")
            return head, None

    def printTextReactionMap(self, head):
        q = deque()
        q.append(ReactionGraphEdge(None, head, [], []))
        visited = set()
        while len(q) > 0:
            qSize = len(q)
            print("\n------------------------")
            for nLevel in range(qSize):
                currEdge = q.popleft()
                # currNode, brokenBonds, createdBonds = q.popleft()
                print(currEdge.node.smiles, 'b ', currEdge.eSources, 'c ', currEdge.eTargets),
                if currEdge.node.smiles not in visited:
                    visited.add(currEdge.node.smiles)
                    for molSmiles, nextEdge in currEdge.node.neighbors.items():
                        q.append(nextEdge)
        print

    def printGraphicReactionMap(self, head):
        q = deque()
        q.append(ReactionGraphEdge(None, head, [], []))
        visited = set()
        if not os.path.isdir("dot"):
            os.system("mkdir dot")
        if not os.path.isdir("static/pics"):
            os.system("mkdir static/pics")
        with open("dot/dot.gv","w") as dotFile:
            dotFile.write("digraph G  {\nconcentrate = true\n")
            edges = []
            nNodes = 0
            while len(q) > 0:
                qSize = len(q)
                nNodes += qSize
                for nLevel in range(qSize):
                    currEdge = q.popleft()
                    if currEdge.node.smiles not in visited:
                        visited.add(currEdge.node.smiles)
                        fileString = smilesToFilename(currEdge.node.smiles)
                        formatString = 'svg'
                        with open("static/pics/"+fileString+'.'+formatString, 'w') as picFile:
                            picFile.write(printMol(strToMol('smi', currEdge.node.smiles), "svg"))
                        if self._doCalculation:
                            dotFile.write("    \""+currEdge.node.smiles+"\" [image = \"../static/pics/"+fileString+'.'+formatString+"\", label = \""+str(currEdge.node.energy)+" kcal/mol\", shape = none, labelloc = b]\n")
                        else:
                            dotFile.write("    \""+currEdge.node.smiles+"\" [image = \"../static/pics/"+fileString+'.'+formatString+"\", label = \"\", shape = none, labelloc = b]\n")
                        for molSmiles, nextEdge in currEdge.node.neighbors.items():
                            if self._pathOnly and nextEdge.onPath or not self._pathOnly:
                                q.append(nextEdge)
                                edges.append((currEdge.node.smiles, nextEdge.node.smiles))
                                if self._doTsSearch:
                                    dotFile.write('   "{}" -> "{}" [ label="{:<8}" ];\n'.format(currEdge.node.smiles, nextEdge.node.smiles, str(nextEdge.tsEnergy)))
                                else:
                                    dotFile.write('   "{}" -> "{}";\n'.format(currEdge.node.smiles, nextEdge.node.smiles))
            dotFile.write("}\n")
            dotFile.write('//nNodes = {}\n'.format(nNodes))
            dotFile.write('//nEdges = {}\n'.format(len(edges)))
        return edges

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
                    if self._doCalculation and self._energyScreen and not self._preEnergyScreen:
                        if path[i+1].smiles not in self._energyMap:
                            absoluteEnergy = self.computeQMEnergy(path[i+1].mol, "gaussian", self._gaussianKeywords, self._fragmentEnergyMap)
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
        if not os.path.isdir("static/pics"):
            os.system("mkdir static/pics")
        dotFile = open("dot/paths.gv", 'w')
        dotFile.write("digraph paths {")
        visitedNode = set()
        visitedEdge = set()
        for path in paths:
            for i, node in enumerate(path):
                if node not in visitedNode:
                    visitedNode.add(node)
                    if self._doCalculation:
                        node.energy = self.computeQMEnergy(node.mol, "gaussian", self._gaussianKeywords, self._fragmentEnergyMap)
                    dotFile.write("    \"" + node.smiles + "\" [image = \"../static/pics/" + smilesToFilename(node.smiles) + ".svg\", label = \""+ str(node.energy) + " kcal/mol\", shape = none, labelloc = b]\n")
                if i < len(path)-1:
                    if (node, path[i+1]) not in visitedEdge:
                        visitedEdge.add((node, path[i+1]))
                        dotFile.write("    \"" + node.smiles + "\" -> \"" + path[i+1].smiles + "\";\n")
        dotFile.write("}\n")

    def getTsEstim(self, node, edge):
        mol1 = pybel.readstring('sdf', pybel.Molecule(node.mol).write('sdf'))
        mol1.make3D('uff')
        for bondData in edge.eTargets:
            self.createNewBond(mol1.OBMol, mol1.atoms[bondData[0]-1].OBAtom, mol1.atoms[bondData[1]-1].OBAtom, bondData[2], bondData[3])
        mol1.localopt('uff')
        mol2 = pybel.readstring('sdf', mol1.write('sdf'))
        for bondData in edge.eTargets:
            self.breakBond(mol1.OBMol, mol1.atoms[bondData[0]-1].OBAtom, mol1.atoms[bondData[1]-1].OBAtom, bondData[2], bondData[3])
        for bondData in edge.eSources:
            self.breakBond(mol2.OBMol, mol2.atoms[bondData[0]-1].OBAtom, mol2.atoms[bondData[1]-1].OBAtom, bondData[2], bondData[3])
        try:
            return SeamTsSearch(mol1, mol2, 'uff')
        except TsEstimConvergeError:
            print("TS estimate convergence failure")
            logging.error("TS estimate convergence failure (SeamTsSearch fails)")
            return None

    def findTsOnPath(self, head):
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
                if len(currEdge.eSources) == 0:
                    print('pure bond forming reaction, energy goes downhill only, no TS')
                    return
                if len(currEdge.eTargets) == 0:
                    print('pure bond breaking reaction, energy goes uphill only, no TS')
                    return

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
    logging.basicConfig(filename = "log", level=logging.DEBUG, filemode='w')
    rr = ReactionRoute()
    flags = {}
    inputName = None

    for i, arg in enumerate(sys.argv):
        if arg[0] == '-':
            if i+1 < len(sys.argv) and sys.argv[i+1][0] != '-':
                flags[arg[1:]] = sys.argv[i+1]
            else:
                flags[arg[1:]] = ''

    if 'j' in flags:
        inputName = flags['j'][:-5]
        with open(inputName+'.json') as f:
            rr.inputJson(f.read())
    if 'r' in flags:
        rr._reactantString = flags['r']
    if 'p' in flags:
        rr._productString = flags['p']
    if 'e' in flags:
        rr._doCalculation = True
        rr._energyScreen = True
    if 'q' in flags:
        rr._gsub = True
    if 'n' in flags:
        rr._noProduct = True

    import cProfile
    # cProfile.run('head, target= rr.isomerSearch()')
    head, target= rr.isomerSearch()
    # rr.printTextReactionMap(head)
    if target is not None and not rr._noProduct:
        paths = []
        rr.findDfsPath(head, target, paths, rr._targetLeastStep)
        rr.labelPathItems(paths, head)
    else:
        rr._pathOnly = False

    if rr._doTsSearch:
        rr.findTsOnPath(head)
    edges = rr.printGraphicReactionMap(head)
    print(edges)
    if inputName is not None:
        with open('dot/{}.gv'.format(inputName), 'w') as dotF:
            with open('{}.json'.format(inputName)) as inputF:
                for line in inputF:
                    dotF.write('//{}'.format(line))
            with open('dot/dot.gv') as dotF_origin:
                dotF.write(dotF_origin.read())
        print("dot -Tsvg dot/dot.gv -o dot/{}.svg".format(inputName))
        os.system("cd dot")
        os.system('dot -Tsvg dot.gv -o {}.svg'.format(inputName))
        os.system('cd ..')