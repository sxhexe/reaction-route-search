# Install script for directory: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats

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
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/smilesformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smilesformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mdlformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdlformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mol2format.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mol2format.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pdbformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/inchiformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/inchiformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/asciiformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/asciiformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/copyformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/copyformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/MNAformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MNAformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/molreport.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molreport.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/nulformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nulformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/painterformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/painterformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/povrayformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/povrayformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/reportformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/reportformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/svgformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/svgformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/textformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/textformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/titleformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/titleformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/confabreport.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/confabreport.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pngformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pngformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/acesformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acesformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/abinitformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/abinitformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/adfformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/adfformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/aoforceformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/aoforceformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/castepformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/castepformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/crystal09format.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crystal09format.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/daltonformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/daltonformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/dmolformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dmolformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fchkformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fchkformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fhiaimsformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhiaimsformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gamessformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gaussformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gaussformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gausscubeformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausscubeformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gausszmatformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gausszmatformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gulpformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gulpformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/hinformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/hinformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/jaguarformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/jaguarformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/molproformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/molproformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mopacformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mopacformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/nwchemformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/nwchemformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pwscfformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pwscfformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/qchemformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/qchemformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/siestaformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/siestaformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/turbomoleformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/turbomoleformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/vaspformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/vaspformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/xsfformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xsfformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/zindoformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/zindoformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gamessukformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gamessukformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/orcaformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/orcaformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/APIInterface.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/APIInterface.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/CSRformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/CSRformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/PQSformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/PQSformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/MCDLformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/MCDLformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/alchemyformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/alchemyformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/acrformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/acrformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/amberformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/amberformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/balstformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/balstformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/bgfformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/bgfformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/boxformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/boxformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cacaoformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacaoformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cacheformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cacheformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/carformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/carformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cccformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cccformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/chem3dformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chem3dformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/chemdrawct.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawct.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/chemtoolformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemtoolformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cifformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cifformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/crkformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/crkformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cssrformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cssrformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/dlpolyformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/dlpolyformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/exyzformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/exyzformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fastsearchformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastsearchformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fastaformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fastaformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/featformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/featformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fhformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fhformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fingerprintformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fingerprintformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/fpsformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/fpsformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/freefracformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/freefracformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/ghemicalformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/ghemicalformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/gromos96format.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/gromos96format.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/groformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/groformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/lmpdatformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lmpdatformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/lpmdformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/lpmdformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mdffformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mdffformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mmcifformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmcifformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mmodformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mmodformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/moldenformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/moldenformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mpdformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpdformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/mpqcformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/mpqcformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/msiformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msiformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/msmsformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/msmsformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/opendxformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/opendxformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/outformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/outformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pcmodelformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pcmodelformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pdbqtformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pdbqtformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pointcloudformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pointcloudformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/posformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/posformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pqrformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pqrformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/shelxformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/shelxformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/smileyformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/smileyformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/stlformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/stlformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/thermoformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/thermoformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/tinkerformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/tinkerformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/unichemformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/unichemformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/viewmolformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/viewmolformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/xedformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xedformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/xyzformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xyzformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/yasaraformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/yasaraformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/rxnformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rxnformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/chemdrawcdx.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdrawcdx.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/chemkinformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemkinformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/rsmiformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/rsmiformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/xtcformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xtcformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/png2format.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/png2format.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cdxmlformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cdxmlformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cmlformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pubchem.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchem.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/xmlformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/xmlformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/cmlreactformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/cmlreactformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/chemdoodlejsonformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/chemdoodlejsonformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/pubchemjsonformat.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/openbabel/2.4.1/pubchemjsonformat.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/libinchi/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

