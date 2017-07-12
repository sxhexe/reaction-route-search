# Install script for directory: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc

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
   "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obrotate.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/babel.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obprobe.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obfit.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obgrep.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obchiral.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obgui.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obminimize.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obenergy.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/roundtrip.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obconformer.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obabel.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obspectrophore.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obprop.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obrotamer.1;/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1/obgen.1")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/man/man1" TYPE FILE FILES
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obrotate.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/babel.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obprobe.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obfit.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obgrep.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obchiral.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obgui.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obminimize.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obenergy.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/roundtrip.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obconformer.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obabel.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obspectrophore.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obprop.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obrotamer.1"
    "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/obgen.1"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1/splash.png")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/share/openbabel/2.4.1" TYPE FILE FILES "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/doc/splash.png")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

