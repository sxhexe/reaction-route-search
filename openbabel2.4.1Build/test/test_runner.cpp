#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>




/* Forward declare test functions. */
int aligntest(int, char*[]);
int automorphismtest(int, char*[]);
int buildertest(int, char*[]);
int canonconsistenttest(int, char*[]);
int canonstabletest(int, char*[]);
int carspacegrouptest(int, char*[]);
int cifspacegrouptest(int, char*[]);
int cistranstest(int, char*[]);
int graphsymtest(int, char*[]);
int gziptest(int, char*[]);
int implicitHtest(int, char*[]);
int lssrtest(int, char*[]);
int isomorphismtest(int, char*[]);
int multicmltest(int, char*[]);
int regressionstest(int, char*[]);
int rotortest(int, char*[]);
int shuffletest(int, char*[]);
int smilestest(int, char*[]);
int spectrophoretest(int, char*[]);
int squareplanartest(int, char*[]);
int stereotest(int, char*[]);
int stereoperceptiontest(int, char*[]);
int tautomertest(int, char*[]);
int tetrahedraltest(int, char*[]);
int tetranonplanartest(int, char*[]);
int tetraplanartest(int, char*[]);
int uniqueidtest(int, char*[]);
int aromatest(int, char*[]);
int atom(int, char*[]);
int bond(int, char*[]);
int cansmi(int, char*[]);
int charge_mmff94(int, char*[]);
int charge_gasteiger(int, char*[]);
int conversion(int, char*[]);
int datatest(int, char*[]);
int ffgaff(int, char*[]);
int ffghemical(int, char*[]);
int ffmmff94(int, char*[]);
int ffuff(int, char*[]);
int formalcharge(int, char*[]);
int format(int, char*[]);
int formula(int, char*[]);
int internalcoord(int, char*[]);
int invalidsmarts(int, char*[]);
int invalidsmiles(int, char*[]);
int iterators(int, char*[]);
int logp_psa(int, char*[]);
int math(int, char*[]);
int mol(int, char*[]);
int phmodel(int, char*[]);
int residue(int, char*[]);
int ringtest(int, char*[]);
int smartstest(int, char*[]);
int smartsparse(int, char*[]);
int smilesmatch(int, char*[]);
int unitcell(int, char*[]);
int cmlreadfile(int, char*[]);


/* Create map.  */

typedef int (*MainFuncPointer)(int , char*[]);
typedef struct
{
  const char* name;
  MainFuncPointer func;
} functionMapEntry;

functionMapEntry cmakeGeneratedFunctionMapEntries[] = {
    {
    "aligntest",
    aligntest
  },
  {
    "automorphismtest",
    automorphismtest
  },
  {
    "buildertest",
    buildertest
  },
  {
    "canonconsistenttest",
    canonconsistenttest
  },
  {
    "canonstabletest",
    canonstabletest
  },
  {
    "carspacegrouptest",
    carspacegrouptest
  },
  {
    "cifspacegrouptest",
    cifspacegrouptest
  },
  {
    "cistranstest",
    cistranstest
  },
  {
    "graphsymtest",
    graphsymtest
  },
  {
    "gziptest",
    gziptest
  },
  {
    "implicitHtest",
    implicitHtest
  },
  {
    "lssrtest",
    lssrtest
  },
  {
    "isomorphismtest",
    isomorphismtest
  },
  {
    "multicmltest",
    multicmltest
  },
  {
    "regressionstest",
    regressionstest
  },
  {
    "rotortest",
    rotortest
  },
  {
    "shuffletest",
    shuffletest
  },
  {
    "smilestest",
    smilestest
  },
  {
    "spectrophoretest",
    spectrophoretest
  },
  {
    "squareplanartest",
    squareplanartest
  },
  {
    "stereotest",
    stereotest
  },
  {
    "stereoperceptiontest",
    stereoperceptiontest
  },
  {
    "tautomertest",
    tautomertest
  },
  {
    "tetrahedraltest",
    tetrahedraltest
  },
  {
    "tetranonplanartest",
    tetranonplanartest
  },
  {
    "tetraplanartest",
    tetraplanartest
  },
  {
    "uniqueidtest",
    uniqueidtest
  },
  {
    "aromatest",
    aromatest
  },
  {
    "atom",
    atom
  },
  {
    "bond",
    bond
  },
  {
    "cansmi",
    cansmi
  },
  {
    "charge_mmff94",
    charge_mmff94
  },
  {
    "charge_gasteiger",
    charge_gasteiger
  },
  {
    "conversion",
    conversion
  },
  {
    "datatest",
    datatest
  },
  {
    "ffgaff",
    ffgaff
  },
  {
    "ffghemical",
    ffghemical
  },
  {
    "ffmmff94",
    ffmmff94
  },
  {
    "ffuff",
    ffuff
  },
  {
    "formalcharge",
    formalcharge
  },
  {
    "format",
    format
  },
  {
    "formula",
    formula
  },
  {
    "internalcoord",
    internalcoord
  },
  {
    "invalidsmarts",
    invalidsmarts
  },
  {
    "invalidsmiles",
    invalidsmiles
  },
  {
    "iterators",
    iterators
  },
  {
    "logp_psa",
    logp_psa
  },
  {
    "math",
    math
  },
  {
    "mol",
    mol
  },
  {
    "phmodel",
    phmodel
  },
  {
    "residue",
    residue
  },
  {
    "ringtest",
    ringtest
  },
  {
    "smartstest",
    smartstest
  },
  {
    "smartsparse",
    smartsparse
  },
  {
    "smilesmatch",
    smilesmatch
  },
  {
    "unitcell",
    unitcell
  },
  {
    "cmlreadfile",
    cmlreadfile
  },

  {0,0}
};

/* Allocate and create a lowercased copy of string
   (note that it has to be free'd manually) */

char* lowercase(const char *string)
{
  char *new_string, *p;

#ifdef __cplusplus
  new_string = static_cast<char *>(malloc(sizeof(char) *
    static_cast<size_t>(strlen(string) + 1)));
#else
  new_string = (char *)(malloc(sizeof(char) * (size_t)(strlen(string) + 1)));
#endif

  if (!new_string)
    {
    return 0;
    }
  strcpy(new_string, string);
  p = new_string;
  while (*p != 0)
    {
#ifdef __cplusplus
    *p = static_cast<char>(tolower(*p));
#else
    *p = (char)(tolower(*p));
#endif

    ++p;
    }
  return new_string;
}

int main(int ac, char *av[])
{
  int i, NumTests, testNum, partial_match;
  char *arg, *test_name;
  int count;
  int testToRun = -1;

  

  for(count =0; cmakeGeneratedFunctionMapEntries[count].name != 0; count++)
    {
    }
  NumTests = count;
  /* If no test name was given */
  /* process command line with user function.  */
  if (ac < 2)
    {
    /* Ask for a test.  */
    printf("Available tests:\n");
    for (i =0; i < NumTests; ++i)
      {
      printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
      }
    printf("To run a test, enter the test number: ");
    fflush(stdout);
    testNum = 0;
    if( scanf("%d", &testNum) != 1 )
      {
      printf("Couldn't parse that input as a number\n");
      return -1;
      }
    if (testNum >= NumTests)
      {
      printf("%3d is an invalid test number.\n", testNum);
      return -1;
      }
    testToRun = testNum;
    ac--;
    av++;
    }
  partial_match = 0;
  arg = 0;
  /* If partial match is requested.  */
  if(testToRun == -1 && ac > 1)
    {
    partial_match = (strcmp(av[1], "-R") == 0) ? 1 : 0;
    }
  if (partial_match && ac < 3)
    {
    printf("-R needs an additional parameter.\n");
    return -1;
    }
  if(testToRun == -1)
    {
    arg = lowercase(av[1 + partial_match]);
    }
  for (i =0; i < NumTests && testToRun == -1; ++i)
    {
    test_name = lowercase(cmakeGeneratedFunctionMapEntries[i].name);
    if (partial_match && strstr(test_name, arg) != NULL)
      {
      testToRun = i;
      ac -=2;
      av += 2;
      }
    else if (!partial_match && strcmp(test_name, arg) == 0)
      {
      testToRun = i;
      ac--;
      av++;
      }
    free(test_name);
    }
  if(arg)
    {
    free(arg);
    }
  if(testToRun != -1)
    {
    int result;

    result = (*cmakeGeneratedFunctionMapEntries[testToRun].func)(ac, av);

    return result;
    }


  /* Nothing was run, display the test names.  */
  printf("Available tests:\n");
  for (i =0; i < NumTests; ++i)
    {
    printf("%3d. %s\n", i, cmakeGeneratedFunctionMapEntries[i].name);
    }
  printf("Failed: %s is an invalid test name.\n", av[1]);

  return -1;
}
