# Generated by CMake

if("${CMAKE_MAJOR_VERSION}.${CMAKE_MINOR_VERSION}" LESS 2.5)
   message(FATAL_ERROR "CMake >= 2.6.0 required")
endif()
cmake_policy(PUSH)
cmake_policy(VERSION 2.6)
#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Protect against multiple inclusion, which would fail when already imported targets are added once more.
set(_targetsDefined)
set(_targetsNotDefined)
set(_expectedTargets)
foreach(_expectedTarget SUNDIALS::generic_static SUNDIALS::nvecserial_static SUNDIALS::nvecmanyvector_static SUNDIALS::sunmatrixband_static SUNDIALS::sunmatrixdense_static SUNDIALS::sunmatrixsparse_static SUNDIALS::sunlinsolband_static SUNDIALS::sunlinsoldense_static SUNDIALS::sunlinsolpcg_static SUNDIALS::sunlinsolspbcgs_static SUNDIALS::sunlinsolspfgmr_static SUNDIALS::sunlinsolspgmr_static SUNDIALS::sunlinsolsptfqmr_static SUNDIALS::sunnonlinsolnewton_static SUNDIALS::sunnonlinsolfixedpoint_static SUNDIALS::arkode_static SUNDIALS::cvode_static SUNDIALS::cvodes_static SUNDIALS::ida_static SUNDIALS::idas_static SUNDIALS::kinsol_static)
  list(APPEND _expectedTargets ${_expectedTarget})
  if(NOT TARGET ${_expectedTarget})
    list(APPEND _targetsNotDefined ${_expectedTarget})
  endif()
  if(TARGET ${_expectedTarget})
    list(APPEND _targetsDefined ${_expectedTarget})
  endif()
endforeach()
if("${_targetsDefined}" STREQUAL "${_expectedTargets}")
  unset(_targetsDefined)
  unset(_targetsNotDefined)
  unset(_expectedTargets)
  set(CMAKE_IMPORT_FILE_VERSION)
  cmake_policy(POP)
  return()
endif()
if(NOT "${_targetsDefined}" STREQUAL "")
  message(FATAL_ERROR "Some (but not all) targets in this export set were already defined.\nTargets Defined: ${_targetsDefined}\nTargets not yet defined: ${_targetsNotDefined}\n")
endif()
unset(_targetsDefined)
unset(_targetsNotDefined)
unset(_expectedTargets)


# Compute the installation prefix relative to this file.
get_filename_component(_IMPORT_PREFIX "${CMAKE_CURRENT_LIST_FILE}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
get_filename_component(_IMPORT_PREFIX "${_IMPORT_PREFIX}" PATH)
if(_IMPORT_PREFIX STREQUAL "/")
  set(_IMPORT_PREFIX "")
endif()

# Create imported target SUNDIALS::generic_static
add_library(SUNDIALS::generic_static STATIC IMPORTED)

set_target_properties(SUNDIALS::generic_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::nvecserial_static
add_library(SUNDIALS::nvecserial_static STATIC IMPORTED)

set_target_properties(SUNDIALS::nvecserial_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::nvecmanyvector_static
add_library(SUNDIALS::nvecmanyvector_static STATIC IMPORTED)

set_target_properties(SUNDIALS::nvecmanyvector_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunmatrixband_static
add_library(SUNDIALS::sunmatrixband_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunmatrixband_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunmatrixdense_static
add_library(SUNDIALS::sunmatrixdense_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunmatrixdense_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunmatrixsparse_static
add_library(SUNDIALS::sunmatrixsparse_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunmatrixsparse_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunlinsolband_static
add_library(SUNDIALS::sunlinsolband_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsolband_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>;SUNDIALS::sunmatrixband_static"
)

# Create imported target SUNDIALS::sunlinsoldense_static
add_library(SUNDIALS::sunlinsoldense_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsoldense_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>;SUNDIALS::sunmatrixdense_static"
)

# Create imported target SUNDIALS::sunlinsolpcg_static
add_library(SUNDIALS::sunlinsolpcg_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsolpcg_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunlinsolspbcgs_static
add_library(SUNDIALS::sunlinsolspbcgs_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsolspbcgs_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunlinsolspfgmr_static
add_library(SUNDIALS::sunlinsolspfgmr_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsolspfgmr_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunlinsolspgmr_static
add_library(SUNDIALS::sunlinsolspgmr_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsolspgmr_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunlinsolsptfqmr_static
add_library(SUNDIALS::sunlinsolsptfqmr_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunlinsolsptfqmr_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunnonlinsolnewton_static
add_library(SUNDIALS::sunnonlinsolnewton_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunnonlinsolnewton_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::sunnonlinsolfixedpoint_static
add_library(SUNDIALS::sunnonlinsolfixedpoint_static STATIC IMPORTED)

set_target_properties(SUNDIALS::sunnonlinsolfixedpoint_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::arkode_static
add_library(SUNDIALS::arkode_static STATIC IMPORTED)

set_target_properties(SUNDIALS::arkode_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::cvode_static
add_library(SUNDIALS::cvode_static STATIC IMPORTED)

set_target_properties(SUNDIALS::cvode_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::cvodes_static
add_library(SUNDIALS::cvodes_static STATIC IMPORTED)

set_target_properties(SUNDIALS::cvodes_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::ida_static
add_library(SUNDIALS::ida_static STATIC IMPORTED)

set_target_properties(SUNDIALS::ida_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::idas_static
add_library(SUNDIALS::idas_static STATIC IMPORTED)

set_target_properties(SUNDIALS::idas_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

# Create imported target SUNDIALS::kinsol_static
add_library(SUNDIALS::kinsol_static STATIC IMPORTED)

set_target_properties(SUNDIALS::kinsol_static PROPERTIES
  INTERFACE_INCLUDE_DIRECTORIES "${_IMPORT_PREFIX}/include"
  INTERFACE_LINK_LIBRARIES "\$<LINK_ONLY:m>"
)

if(CMAKE_VERSION VERSION_LESS 2.8.12)
  message(FATAL_ERROR "This file relies on consumers using CMake 2.8.12 or greater.")
endif()

# Load information for each installed configuration.
get_filename_component(_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
file(GLOB CONFIG_FILES "${_DIR}/SUNDIALSTargets-*.cmake")
foreach(f ${CONFIG_FILES})
  include(${f})
endforeach()

# Cleanup temporary variables.
set(_IMPORT_PREFIX)

# Loop over all imported files and verify that they actually exist
foreach(target ${_IMPORT_CHECK_TARGETS} )
  foreach(file ${_IMPORT_CHECK_FILES_FOR_${target}} )
    if(NOT EXISTS "${file}" )
      message(FATAL_ERROR "The imported target \"${target}\" references the file
   \"${file}\"
but this file does not exist.  Possible reasons include:
* The file was deleted, renamed, or moved to another location.
* An install or uninstall procedure did not complete successfully.
* The installation package was faulty and contained
   \"${CMAKE_CURRENT_LIST_FILE}\"
but not all the files it references.
")
    endif()
  endforeach()
  unset(_IMPORT_CHECK_FILES_FOR_${target})
endforeach()
unset(_IMPORT_CHECK_TARGETS)

# This file does not depend on other imported targets which have
# been exported from the same project but in a separate export set.

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
cmake_policy(POP)
