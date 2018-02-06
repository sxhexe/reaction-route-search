from reactionroute import *
mol = pybel.readstring('smi', '[C-]#[O+]')
mol.addh()
mat = molToMat(mol.OBMol)
print(mat)
mol2 = matToMol(mat)
for atom in ob.OBMolAtomIter(mol2):
    print('formal charge of atom {} is {}'.format(atom.GetIdx(), atom.GetFormalCharge()))
print(molToMat(mol2))