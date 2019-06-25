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
include examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/depend.make

# Include the progress variables for this target.
include examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/progress.make

# Include the compile flags for this target's objects.
include examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/flags.make

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/flags.make
examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvode/serial/cvKrylovDemo_prec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o   -c /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvode/serial/cvKrylovDemo_prec.c

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.i"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvode/serial/cvKrylovDemo_prec.c > CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.i

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.s"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvode/serial/cvKrylovDemo_prec.c -o CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.s

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.requires:

.PHONY : examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.requires

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.provides: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.requires
	$(MAKE) -f examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/build.make examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.provides.build
.PHONY : examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.provides

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.provides.build: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o


# Object files for target cvKrylovDemo_prec
cvKrylovDemo_prec_OBJECTS = \
"CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o"

# External object files for target cvKrylovDemo_prec
cvKrylovDemo_prec_EXTERNAL_OBJECTS =

examples/cvode/serial/cvKrylovDemo_prec: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o
examples/cvode/serial/cvKrylovDemo_prec: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/build.make
examples/cvode/serial/cvKrylovDemo_prec: src/cvode/libsundials_cvode.so.3.1.0
examples/cvode/serial/cvKrylovDemo_prec: src/nvec_ser/libsundials_nvecserial.so.3.1.0
examples/cvode/serial/cvKrylovDemo_prec: /usr/lib64/librt.so
examples/cvode/serial/cvKrylovDemo_prec: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cvKrylovDemo_prec"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cvKrylovDemo_prec.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/build: examples/cvode/serial/cvKrylovDemo_prec

.PHONY : examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/build

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/requires: examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/cvKrylovDemo_prec.c.o.requires

.PHONY : examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/requires

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/clean:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial && $(CMAKE_COMMAND) -P CMakeFiles/cvKrylovDemo_prec.dir/cmake_clean.cmake
.PHONY : examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/clean

examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/depend:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0 /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvode/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/cvode/serial/CMakeFiles/cvKrylovDemo_prec.dir/depend

