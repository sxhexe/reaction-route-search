# Install script for directory: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/scripts

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

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bindings_python")
  IF(EXISTS "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so"
         RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
  ENDIF()
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages" TYPE MODULE FILES "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib/_openbabel.so")
  IF(EXISTS "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so")
    FILE(RPATH_CHANGE
         FILE "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so"
         OLD_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/lib::"
         NEW_RPATH "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/_openbabel.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bindings_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bindings_python")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/openbabel.py")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages" TYPE FILE FILES "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/scripts/python/openbabel.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bindings_python")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bindings_python")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages/pybel.py")
  IF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
  IF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  ENDIF (CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
FILE(INSTALL DESTINATION "/home/reactionroutesearch/reaction-route-search/openbabel2.4.1Install/lib/python2.7/site-packages" TYPE FILE FILES "/home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/scripts/python/pybel.py")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "bindings_python")

