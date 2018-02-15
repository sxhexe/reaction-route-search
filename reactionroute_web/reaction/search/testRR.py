import unittest
from reactionroute import *

class TestRR(unittest.TestCase):
    def routine(self, rr):
        head, target = rr.isomerSearch()
        paths = []
        rr.findDfsPath(head, target, paths, rr._targetLeastStep)
        rr.labelPathItems(paths, head)
        edges = rr.printGraphicReactionMap(head)
        return sorted(edges)

    def test_addition(self):
        rr = ReactionRoute(inputJson='{"reactant": "C=C.Cl", "product": "CCCl"}')
        edges = self.routine(rr)
        self.assertEqual(edges, sorted([('C=C.Cl', 'C[CH2+].[Cl-]'),
                                        ("C=C.Cl", "ClC=C.[H][H]"),
                                        ("C=C.Cl", "CCCl"),
                                        ('C=C.Cl', 'C=C.[Cl-].[H+]'),
                                        ("C[CH2+].[Cl-]", "CCCl"),
                                        ("ClC=C.[H][H]", "CCCl"),
                                        ('C=C.[Cl-].[H+]', 'CCCl')]))

    def test_esterification(self):
        rr = ReactionRoute(inputJson='{\
                                       "reactant": "OC=O.CO", \
                                       "product": "COC=O.O", \
                                       "activeList": [1, 4, 5, 6, 11]\
                                       }')
        edges = self.routine(rr)
        self.assertEqual(edges, sorted([('CO.OC=O', 'COC=O.[H+].[OH-]'),
                                        ('CO.OC=O', 'COC=O.O'),
                                        ('CO.OC=O', 'C[OH+]C=O.[OH-]'),
                                        ('CO.OC=O', '[CH3+].[H+].[O-]C=O.[OH-]'),
                                        ('CO.OC=O', 'CO.[H+].[O-]C=O'),
                                        ('CO.OC=O', 'C[OH2+].[O-]C=O'),
                                        ('CO.OC=O', 'O.[CH3+].[O-]C=O'),
                                        ('CO.OC=O', 'OC=O.[CH3+].[OH-]'),
                                        ('CO.OC=O', 'C.OOC=O'),
                                        ('COC=O.[H+].[OH-]', 'COC=O.O'),
                                        ('C[OH+]C=O.[OH-]', 'COC=O.O'),
                                        ('[CH3+].[H+].[O-]C=O.[OH-]', 'COC=O.O'),
                                        ('CO.[H+].[O-]C=O', 'COC=O.O'),
                                        ('C[OH2+].[O-]C=O', 'COC=O.O'),
                                        ('O.[CH3+].[O-]C=O', 'COC=O.O'),
                                        ('OC=O.[CH3+].[OH-]', 'COC=O.O'),
                                        ('C.OOC=O', 'COC=O.O')]))

    def test_elimination(self):
        rr = ReactionRoute(inputJson='{\
                                       "reactant": "CCCO", \
                                       "product": "CC=C.O", \
                                       "activeList": [2, 3, 4, 8, 11, 12]\
                                       }')
        edges = self.routine(rr)
        self.assertEqual(edges, sorted([('C/C=C/O.[H][H]', 'CC=C.O'),
                                        ('CC(O)C', 'CC=C.O'),
                                        ('CC=C.[H+].[OH-]', 'CC=C.O'),
                                        ('CCCO', 'C/C=C/O.[H][H]'),
                                        ('CCCO', 'CC(O)C'),
                                        ('CCCO', 'CC=C.O'),
                                        ('CCCO', 'CC=C.[H+].[OH-]'),
                                        ('CCCO', 'CC[CH2+].[OH-]'),
                                        ('CCCO', 'C[CH+]C.[OH-]'),
                                        ('CC[CH2+].[OH-]', 'CC=C.O'),
                                        ('C[CH+]C.[OH-]', 'CC=C.O')]))

    def test_click(self):
        rr = ReactionRoute(inputJson='{\
                                       "reactant": "N=[N+]=[N-].C#C", \
                                       "product": "N1N=NC=C1"\
                                       }')
        edges = self.routine(rr)
        self.assertEqual(edges, sorted([('C#C.[N-]=[N+]=N', '[CH+]=[CH+].[NH-]N=[N-]'),
                                        ('C#C.[N-]=[N+]=N', 'C#C.N1=NN1'),
                                        ('C#C.[N-]=[N+]=N', '[N-]=[N+]1NC=C1'),
                                        ('C#C.[N-]=[N+]=N', '[N-]=NNC=[CH+]'),
                                        ('C#C.[N-]=[N+]=N', '[N-](N=N)C=[CH+]'),
                                        ('C#C.[N-]=[N+]=N', '[H+].[N-]=NNC#C'),
                                        ('[CH+]=[CH+].[NH-]N=[N-]', 'c1cnn[nH]1'),
                                        ('C#C.N1=NN1', 'c1cnn[nH]1'),
                                        ('[N-]=[N+]1NC=C1', 'c1cnn[nH]1'),
                                        ('[N-]=NNC=[CH+]', 'c1cnn[nH]1'),
                                        ('[N-](N=N)C=[CH+]', 'c1cnn[nH]1'),
                                        ('[H+].[N-]=NNC#C', 'c1cnn[nH]1')]))

    def test_bromonium(self):
        rr = ReactionRoute(inputJson='{\
                                      "reactant": "C=C.[Br][Br]",\
                                      "product": "BrCCBr"\
                                      }')
        edges = self.routine(rr)
        self.assertEqual(edges, sorted([('Br.BrC=C', 'BrCCBr'),
                                        ('BrBr.C=C', 'Br.BrC=C'),
                                        ('BrBr.C=C', 'BrC=C.[Br-].[H+]'),
                                        ('BrBr.C=C', 'BrCCBr'),
                                        ('BrBr.C=C', 'BrC[CH2+].[Br-]'),
                                        ('BrBr.C=C', '[Br-].[Br-].[CH2+][CH2+]'),
                                        ('BrC=C.[Br-].[H+]', 'BrCCBr'),
                                        ('BrC[CH2+].[Br-]', 'BrCCBr'),
                                        ('[Br-].[Br-].[CH2+][CH2+]', 'BrCCBr')]))
if __name__ == '__main__':
    unittest.main()
