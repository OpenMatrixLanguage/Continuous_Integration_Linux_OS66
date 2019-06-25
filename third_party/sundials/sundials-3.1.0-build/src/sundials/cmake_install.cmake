# Install script for directory: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/src/sundials

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
  MESSAGE("
Install shared components
")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/sundials" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_band.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_dense.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_direct.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_fnvector.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_iterative.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_linearsolver.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_math.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_matrix.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_nvector.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_pcg.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_sparse.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_spbcgs.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_spfgmr.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_spgmr.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_sptfqmr.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_types.h"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/include/sundials/sundials_version.h"
    )
endif()

