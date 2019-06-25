# Install script for directory: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "0")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix_dense.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix.h;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/sundials_matrix.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/sundials_nvector.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/test_sunmatrix_dense.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../test_sunmatrix.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../test_sunmatrix.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../../../src/sundials/sundials_matrix.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../../../src/sundials/sundials_nvector.c"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix_dense.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix.h;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/sundials_matrix.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/sundials_nvector.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/test_sunmatrix_dense.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../test_sunmatrix.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../test_sunmatrix.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../../../src/sundials/sundials_matrix.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../../../src/sundials/sundials_nvector.c"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix_dense.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/test_sunmatrix.h;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/sundials_matrix.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/sundials_nvector.c")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/test_sunmatrix_dense.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../test_sunmatrix.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../test_sunmatrix.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../../../src/sundials/sundials_matrix.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/sunmatrix/dense/../../../src/sundials/sundials_nvector.c"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/CMakeLists.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense" TYPE FILE FILES "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/sunmatrix/dense/CMakeLists.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense/Makefile")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/sunmatrix/dense" TYPE FILE RENAME "Makefile" FILES "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/sunmatrix/dense/Makefile_ex")
endif()

