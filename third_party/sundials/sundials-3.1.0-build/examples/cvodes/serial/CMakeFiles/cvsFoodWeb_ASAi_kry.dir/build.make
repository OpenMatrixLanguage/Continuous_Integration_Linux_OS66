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
include examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/depend.make

# Include the progress variables for this target.
include examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/progress.make

# Include the compile flags for this target's objects.
include examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/flags.make

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/flags.make
examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsFoodWeb_ASAi_kry.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o   -c /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsFoodWeb_ASAi_kry.c

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.i"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsFoodWeb_ASAi_kry.c > CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.i

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.s"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsFoodWeb_ASAi_kry.c -o CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.s

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.requires:

.PHONY : examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.requires

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.provides: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.requires
	$(MAKE) -f examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/build.make examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.provides.build
.PHONY : examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.provides

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.provides.build: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o


# Object files for target cvsFoodWeb_ASAi_kry
cvsFoodWeb_ASAi_kry_OBJECTS = \
"CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o"

# External object files for target cvsFoodWeb_ASAi_kry
cvsFoodWeb_ASAi_kry_EXTERNAL_OBJECTS =

examples/cvodes/serial/cvsFoodWeb_ASAi_kry: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o
examples/cvodes/serial/cvsFoodWeb_ASAi_kry: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/build.make
examples/cvodes/serial/cvsFoodWeb_ASAi_kry: src/cvodes/libsundials_cvodes.so.3.1.0
examples/cvodes/serial/cvsFoodWeb_ASAi_kry: src/nvec_ser/libsundials_nvecserial.so.3.1.0
examples/cvodes/serial/cvsFoodWeb_ASAi_kry: /usr/lib64/librt.so
examples/cvodes/serial/cvsFoodWeb_ASAi_kry: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cvsFoodWeb_ASAi_kry"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cvsFoodWeb_ASAi_kry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/build: examples/cvodes/serial/cvsFoodWeb_ASAi_kry

.PHONY : examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/build

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/requires: examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cvsFoodWeb_ASAi_kry.c.o.requires

.PHONY : examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/requires

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/clean:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && $(CMAKE_COMMAND) -P CMakeFiles/cvsFoodWeb_ASAi_kry.dir/cmake_clean.cmake
.PHONY : examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/clean

examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/depend:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0 /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/cvodes/serial/CMakeFiles/cvsFoodWeb_ASAi_kry.dir/depend

