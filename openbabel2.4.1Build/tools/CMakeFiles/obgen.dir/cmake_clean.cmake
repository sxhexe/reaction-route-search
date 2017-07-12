FILE(REMOVE_RECURSE
  "CMakeFiles/obgen.dir/obgen.o"
  "../bin/obgen.pdb"
  "../bin/obgen"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/obgen.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
