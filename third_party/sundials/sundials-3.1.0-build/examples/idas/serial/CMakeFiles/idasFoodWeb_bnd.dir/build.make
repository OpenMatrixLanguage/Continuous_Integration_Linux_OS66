# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /users/banspach/cmake/cmake-3.10.0-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /users/banspach/cmake/cmake-3.10.0-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build

# Include any dependencies generated for this target.
include examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/depend.make

# Include the progress variables for this target.
include examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/progress.make

# Include the compile flags for this target's objects.
include examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/flags.make

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/flags.make
examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasFoodWeb_bnd.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o   -c /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasFoodWeb_bnd.c

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.i"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasFoodWeb_bnd.c > CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.i

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.s"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasFoodWeb_bnd.c -o CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.s

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.requires:

.PHONY : examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.requires

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.provides: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.requires
	$(MAKE) -f examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/build.make examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.provides.build
.PHONY : examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.provides

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.provides.build: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o


# Object files for target idasFoodWeb_bnd
idasFoodWeb_bnd_OBJECTS = \
"CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o"

# External object files for target idasFoodWeb_bnd
idasFoodWeb_bnd_EXTERNAL_OBJECTS =

examples/idas/serial/idasFoodWeb_bnd: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o
examples/idas/serial/idasFoodWeb_bnd: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/build.make
examples/idas/serial/idasFoodWeb_bnd: src/idas/libsundials_idas.so.2.1.0
examples/idas/serial/idasFoodWeb_bnd: src/nvec_ser/libsundials_nvecserial.so.3.1.0
examples/idas/serial/idasFoodWeb_bnd: /usr/lib64/librt.so
examples/idas/serial/idasFoodWeb_bnd: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable idasFoodWeb_bnd"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/idasFoodWeb_bnd.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/build: examples/idas/serial/idasFoodWeb_bnd

.PHONY : examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/build

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/requires: examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/idasFoodWeb_bnd.c.o.requires

.PHONY : examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/requires

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/clean:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && $(CMAKE_COMMAND) -P CMakeFiles/idasFoodWeb_bnd.dir/cmake_clean.cmake
.PHONY : examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/clean

examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/depend:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0 /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/idas/serial/CMakeFiles/idasFoodWeb_bnd.dir/depend

