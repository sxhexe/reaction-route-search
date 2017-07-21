import pybel
import openbabel as ob

def printGradients(mol, pFF):
    atomList = []
    print "{:^5} {:^5} {:^12} {:^12} {:^12} {:^12} {:^12} {:^12}".format("idx", "atom", "x", "y", "z", "gx", "gy", "gz")
    for atom in mol:
        print("{:^5} {:^5} {:^12f} {:^12f} {:^12f} {:^12f} {:^12f} {:^12f}".format(
                                                           atom.idx, atom.atomicnum,
                                                           atom.coords[0], atom.coords[1], atom.coords[2],
                                                           pFF.GetGradient(atom.OBAtom).GetX(),
                                                           pFF.GetGradient(atom.OBAtom).GetY(),
                                                           pFF.GetGradient(atom.OBAtom).GetZ()))

h2o_ts_string = '\n OpenBabel07171718443D\n\n  3  2  0  0  0  0  0  0  0  0999 V2000\n    0.5111    1.1929    0.0000 O   0  0  0  0  0  0  0  0  0  0  0  0\n    2.0943    1.2466   -0.0910 H   0  0  0  0  0  0  0  0  0  0  0  0\n    0.1878    0.5054    0.6031 H   0  0  0  0  0  0  0  0  0  0  0  0\n  1  2  1  0  0  0  0\n  1  3  1  0  0  0  0\nM  END\n'
h2o_ts = pybel.readstring('sdf',h2o_ts_string)
print h2o_ts.write('mol')
ff = ob.OBForceField.FindForceField("uff")
ff.Setup(h2o_ts.OBMol)
ff.SteepestDescentInitialize()
printGradients(h2o_ts, ff)
h2o_ts_b = pybel.Molecule(h2o_ts)
h2o_ts_b.OBMol.DeleteBond(h2o_ts_b.OBMol.GetBond(1,2))
ff_b = ob.OBForceField.FindForceField("uff")
ff_b.Setup(h2o_ts_b.OBMol)
ff_b.SteepestDescentInitialize()
printGradients(h2o_ts_b, ff_b)
ff.SetLogToStdOut()
ff.SteepestDescentMecp(20, 1, 1, ff_b, h2o_ts_b.OBMol)
printGradients(h2o_ts_b, ff_b)
printGradients(h2o_ts, ff)

