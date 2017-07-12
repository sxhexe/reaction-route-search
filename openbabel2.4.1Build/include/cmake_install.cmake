# Install script for directory: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/inchi" TYPE FILE FILES "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/inchi_api.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel" TYPE FILE FILES "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/chemdrawcdx.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel" TYPE FILE FILES
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/molchrg.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/obutil.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/typer.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/descriptor.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/rand.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/residue.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/data_utilities.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/data.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/rotor.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/builder.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/obconversion.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/rotamer.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/kinetics.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/bitvec.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/groupcontrib.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/lineend.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/shared_ptr.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/atom.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/griddata.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/parsmart.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/obiter.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/text.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/pointgroup.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/op.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/atomclass.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/chains.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/spectrophore.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/format.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/inchiformat.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/plugin.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/conformersearch.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/mol.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/chiral.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/bond.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/bondtyper.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/tautomer.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/phmodel.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/mcdlutil.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/ring.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/optransform.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/generic.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/internalcoord.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/patty.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/base.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/fingerprint.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/forcefield.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/obmolecformat.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/reaction.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/xml.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/oberror.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/graphsym.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/grid.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/dlhandler.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/chargemodel.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/distgeom.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/canon.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/query.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/isomorphism.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/locale.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/alias.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/matrix.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/tokenst.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel/math" TYPE FILE FILES
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/math/erf.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/math/transform3d.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/math/matrix3x3.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/math/align.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/math/spacegroup.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/math/vector3.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel/stereo" TYPE FILE FILES
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/tetraplanar.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/tetranonplanar.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/cistrans.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/stereo.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/squareplanar.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/tetrahedral.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/stereo/bindings.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/openbabel-2.0/openbabel/json" TYPE FILE FILES
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/json/customwriter.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/json/json.h"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/include/openbabel/json/json-forwards.h"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

