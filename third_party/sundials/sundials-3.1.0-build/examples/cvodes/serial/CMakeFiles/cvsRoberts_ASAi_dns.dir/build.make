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
include examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/depend.make

# Include the progress variables for this target.
include examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/progress.make

# Include the compile flags for this target's objects.
include examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/flags.make

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/flags.make
examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsRoberts_ASAi_dns.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o   -c /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsRoberts_ASAi_dns.c

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.i"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsRoberts_ASAi_dns.c > CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.i

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.s"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial/cvsRoberts_ASAi_dns.c -o CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.s

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.requires:

.PHONY : examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.requires

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.provides: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.requires
	$(MAKE) -f examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/build.make examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.provides.build
.PHONY : examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.provides

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.provides.build: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o


# Object files for target cvsRoberts_ASAi_dns
cvsRoberts_ASAi_dns_OBJECTS = \
"CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o"

# External object files for target cvsRoberts_ASAi_dns
cvsRoberts_ASAi_dns_EXTERNAL_OBJECTS =

examples/cvodes/serial/cvsRoberts_ASAi_dns: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o
examples/cvodes/serial/cvsRoberts_ASAi_dns: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/build.make
examples/cvodes/serial/cvsRoberts_ASAi_dns: src/cvodes/libsundials_cvodes.so.3.1.0
examples/cvodes/serial/cvsRoberts_ASAi_dns: src/nvec_ser/libsundials_nvecserial.so.3.1.0
examples/cvodes/serial/cvsRoberts_ASAi_dns: /usr/lib64/librt.so
examples/cvodes/serial/cvsRoberts_ASAi_dns: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable cvsRoberts_ASAi_dns"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cvsRoberts_ASAi_dns.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/build: examples/cvodes/serial/cvsRoberts_ASAi_dns

.PHONY : examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/build

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/requires: examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/cvsRoberts_ASAi_dns.c.o.requires

.PHONY : examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/requires

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/clean:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial && $(CMAKE_COMMAND) -P CMakeFiles/cvsRoberts_ASAi_dns.dir/cmake_clean.cmake
.PHONY : examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/clean

examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/depend:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0 /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/cvodes/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/cvodes/serial/CMakeFiles/cvsRoberts_ASAi_dns.dir/depend

