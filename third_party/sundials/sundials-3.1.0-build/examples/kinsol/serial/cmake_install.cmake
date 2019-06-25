# Install script for directory: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial

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
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinFerTron_dns.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinFerTron_dns.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinFerTron_dns.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinFerTron_dns.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinFoodWeb_kry.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinFoodWeb_kry.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinFoodWeb_kry.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinFoodWeb_kry.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinKrylovDemo_ls.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinKrylovDemo_ls.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinKrylovDemo_ls.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinKrylovDemo_ls.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinLaplace_bnd.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinLaplace_bnd.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinLaplace_bnd.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinLaplace_bnd.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinLaplace_picard_bnd.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinLaplace_picard_bnd.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinLaplace_picard_bnd.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinLaplace_picard_bnd.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinRoberts_fp.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinRoberts_fp.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinRoberts_fp.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinRoberts_fp.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinRoboKin_dns.c;/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/kinRoboKin_dns.out")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinRoboKin_dns.c"
    "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/kinRoboKin_dns.out"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/README")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/kinsol/serial/README")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/CMakeLists.txt")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE FILES "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/kinsol/serial/CMakeLists.txt")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial/Makefile")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-install/examples/kinsol/serial" TYPE FILE RENAME "Makefile" FILES "/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/kinsol/serial/Makefile_ex")
endif()

