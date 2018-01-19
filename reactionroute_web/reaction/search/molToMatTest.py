from reactionroute import *
mol = pybel.readstring('smi', '[C-]#[O+]')
mol.addh()
print(molToMat(mol.OBMol))
