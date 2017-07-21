import pybel
import openbabel as ob
import numpy as np

def getGradients(ff, mol):
    gList = []
    for atom in mol:
        gList.append(ff.GetGradient(atom.OBAtom).GetX())
        gList.append(ff.GetGradient(atom.OBAtom).GetY())
        gList.append(ff.GetGradient(atom.OBAtom).GetZ())
    g = np.array(gList) # keep in mind that this gradient from openbabel is negative gradient really.
    return g

def updateCoords(mol, coords):
    molStringLines = mol.write('mol').split('\n')
    for i in range(len(mol.atoms)):
        molStringLines[i+4] = "{:10.4f}{:10.4f}{:10.4f}".format(coords[i*3], coords[i*3+1], coords[i*3+2]) + molStringLines[i+4][30:]
    mol2 = pybel.readstring('mol','\n'.join(molStringLines))
    return mol2

def getCoordinates(mol):
    cList = []
    xyz = mol.write('xyz')
    lines = xyz.split('\n')
    for line in lines[2:-1]:
        for num in line.split()[1:4]:
            cList.append(float(num))
    return np.array(cList)

def SeamTsSearch(mol1, mol2, forcefield):

    def getFAndG(molA, molB):
        print "in getFAndG"
        ff1 = ob.OBForceField.FindForceField(forcefield)
        ff2 = ob.OBForceField.FindForceField(forcefield)
        ff1.Setup(molA.OBMol) # Have to setup the molecule everytime before calculating energy/gradients
        e1 = ff1.Energy() # Energy() call is needed to generate gradients
        print "e1 = ", e1
        g1 = getGradients(ff1, molA)
        print "g1 = ", g1
        ff2.Setup(molB.OBMol)
        e2 = ff2.Energy()
        print "e2 = ", e2
        g2 = getGradients(ff2, molB)
        print "g2 = ", g2
        alpha = 20 # arbitrary constant. Bigger alpha means smaller weight on energy difference
        print "(g1+g2)/2= ", (g1+g2)/2
        print "(2/alpha)*(e1-e2)*(g1-g2) = ", (2.0/alpha)*(e1-e2)*(g1-g2)
        return (e1+e2)/2+(e1-e2)*(e1-e2)/alpha, (g1+g2)/2+(2.0/alpha)*(e1-e2)*(g1-g2)

    def lineSearch(direction, coords, f):
        # ref: https://en.wikipedia.org/wiki/Nonlinear_conjugate_gradient_method
        #      https://en.wikipedia.org/wiki/Backtracking_line_search
        print "\n**********in lineSearch"
        step = 0.05 # maximum step number, shrink until energy are sufficiently decreased.
        print "direction = ", direction
        directionNorm = np.linalg.norm(direction)
        print "directionNorm = ", directionNorm
        directionUnit = direction/directionNorm
        print "directionUnit = ", directionUnit
        while True:
            newCoords = coords + step * directionUnit
            print "newCoords = ", newCoords
            fNew = getFAndG(updateCoords(mol1, newCoords), updateCoords(mol2, newCoords))[0]
            print "fNew and f - step*0.5 are ", fNew, f - step*0.5
            if fNew < f - step*0.5:
                return newCoords
            else:
                step = step*0.5


    def getBeta(directionNew, direction):
        return directionNew.dot(directionNew.T)/direction.dot(direction.T)

    print "before iterations..."
    f, g = getFAndG(mol1, mol2)
    print "f and g are ", f, g
    directionNew = g # g from openbabel is direction (-g)
    conjugateDirectionNew = directionNew
    c = getCoordinates(mol1)
    print "coordinates \n", c
    cNew = lineSearch(directionNew, c, f)
    c = cNew
    conjugateDirection = conjugateDirectionNew
    direction = directionNew
    mol1 = updateCoords(mol1, c)
    mol2 = updateCoords(mol2, c)
    iteration = 0
    while True:
        iteration += 1
        print "\n\n============calculating iteration number {}".format(iteration)
        fNew, gNew = getFAndG(mol1, mol2)
        print "fNew and gNew = ", fNew, gNew
        print "f and fNew = ", f, fNew
        if f - fNew < 1:
            break
        directionNew = gNew
        beta = getBeta(directionNew, direction)
        print "beta = ", beta
        conjugateDirectionNew = directionNew + beta * conjugateDirection
        print "conjugateDirectionNew = ", conjugateDirectionNew
        cNew = lineSearch(conjugateDirectionNew, c, fNew)
        c = cNew
        direction = directionNew
        f = fNew
        g = gNew
        conjugateDirection = conjugateDirectionNew
        mol1 = updateCoords(mol1, c)
        mol2 = updateCoords(mol2, c)
    return c
