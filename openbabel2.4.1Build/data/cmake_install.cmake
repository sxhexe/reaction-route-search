# Install script for directory: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/aromatic.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/atomization-energies.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/atomtyp.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/babel_povray3.inc;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/bondtyp.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/element.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem2015ba.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem2015bm.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem2015bn.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem2015ha.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem2015hm.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eem2015hn.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/eqeqIonizations.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/fragments.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/gaff.dat;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/gaff.prm;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/ghemical.prm;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/isotope-small.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/isotope.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/logp.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/MACCS.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmff94.ff;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmff94s.ff;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffang.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffbndk.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffbond.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffchg.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffdef.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffdfsb.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffoop.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffpbci.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffprop.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffstbn.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmfftor.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffvdw.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffs_oop.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mmffs_tor.par;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mpC.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/mr.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/patterns.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/phmodel.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/plugindefines.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/psa.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/qeq.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/resdata.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/ringtyp.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/SMARTS_InteLigand.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/space-groups.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/superatom.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/svgformat.script;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/templates.sdf;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/torlib.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/types.txt;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/UFF.prm")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1" TYPE FILE FILES
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/aromatic.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/atomization-energies.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/atomtyp.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/babel_povray3.inc"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/bondtyp.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/element.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem2015ba.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem2015bm.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem2015bn.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem2015ha.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem2015hm.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eem2015hn.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/eqeqIonizations.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/fragments.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/gaff.dat"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/gaff.prm"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/ghemical.prm"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/isotope-small.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/isotope.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/logp.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/MACCS.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmff94.ff"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmff94s.ff"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffang.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffbndk.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffbond.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffchg.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffdef.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffdfsb.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffoop.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffpbci.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffprop.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffstbn.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmfftor.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffvdw.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffs_oop.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mmffs_tor.par"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mpC.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/mr.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/patterns.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/phmodel.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/plugindefines.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/psa.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/qeq.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/resdata.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/ringtyp.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/SMARTS_InteLigand.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/space-groups.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/superatom.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/svgformat.script"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/templates.sdf"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/torlib.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/types.txt"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/data/UFF.prm"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

