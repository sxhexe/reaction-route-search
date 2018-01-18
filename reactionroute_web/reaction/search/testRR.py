import unittest
from reactionroute import *

class TestRR(unittest.TestCase):
    def routine(self, rr):
        head, target = rr.isomerSearch()
        paths = []
        rr.findDfsPath(head, target, paths, rr._targetLeastStep)
        rr.labelPathItems(paths, head)
        edges = rr.printGraphicReactionMap(head)
        return edges.sort()

    def test_addition(self):
        rr = ReactionRoute(inputJson='{"reactant": "C=C.Cl", "product": "CCCl"}')
        edges = self.routine(rr)
        self.assertEqual(edges, [('C=C.Cl', 'C[CH2+].[Cl-]'),
                                 ("C=C.Cl", "ClC=C.[H][H]"),
                                 ("C=C.Cl", "CCCl"),
                                 ("C[CH2+].[Cl-]", "CCCl"),
                                 ("ClC=C.[H][H]", "CCCl")].sort())

    def test_esterification(self):
        rr = ReactionRoute(inputJson='{\
                                       "reactant": "OC=O.CO", \
                                       "product": "COC=O.O", \
                                       "activeList": [1, 4, 5, 6, 11]\
                                       }')
        edges = self.routine(rr)
        self.assertEqual(edges, [('OC=O.CO', 'O=CO[OH2+].[CH3-]'),
                                 ('OC=O.CO', 'COC=O.O'),
                                 ('OC=O.CO', '[O-]C=O.C[OH2+]'),
                                 ('OC=O.CO', 'OOC=O.C'),
                                 ('OC=O.CO', '[O-]C=O.O.[CH3+]'),
                                 ('OC=O.CO', 'C[OH+]C=O.[OH-]'),
                                 ('O=CO[OH2+].[CH3-]', 'COC=O.O'),
                                 ('[O-]C=O.C[OH2+]', 'COC=O.O'),
                                 ('OOC=O.C', 'COC=O.O'),
                                 ('[O-]C=O.O.[CH3+]', 'COC=O.O'),
                                 ('C[OH+]C=O.[OH-]', 'COC=O.O')].sort())

    def test_elimination(self):
        rr = ReactionRoute(inputJson='{\
                                       "reactant": "CCCO", \
                                       "product": "CC=C.O", \
                                       "activeList": [2, 3, 4, 8, 11, 12]\
                                       }')
        edges = self.routine(rr)
        self.assertEqual(edges, [('CCCO', '[CH2-]C([OH2+])C'),
                                 ('CCCO', 'CC=CO.[H][H]'),
                                 ('CCCO', 'CC=C.O'),
                                 ('CCCO', '[CH-](C[OH2+])C'),
                                 ('[CH2-]C([OH2+])C', 'CC=C.O'),
                                 ('CC=CO.[H][H]', 'CC=C.O'),
                                 ('[CH-](C[OH2+])C', 'CC=C.O')].sort())

    def test_bromonium(self):
        rr = ReactionRoute(inputJson='{\
                                      "reactant": "C=C.[Br][Br]",\
                                      "product": "BrCCBr"\
                                      }')
        edges = self.routine(rr)
        self.assertEqual(edges, [('BrBr.C=C', 'BrC[CH2+].[Br-]'),
                                 ('BrBr.C=C', '[CH2-]C[Br+]Br'),
                                 ('BrBr.C=C', 'BrC=C.Br'),
                                 ('BrBr.C=C', 'BrCCBr'),
                                 ('BrBr.C=C', '[Br+]1CC1.[Br-]'),
                                 ('BrC[CH2+].[Br-]', 'BrCCBr'),
                                 ('[CH2-]C[Br+]Br', 'BrCCBr'),
                                 ('BrC=C.Br', 'BrCCBr'),
                                 ('[Br+]1CC1.[Br-]', 'BrCCBr')].sort())
if __name__ == '__main__':
    unittest.main()
