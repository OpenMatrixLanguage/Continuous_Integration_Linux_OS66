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
include examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/depend.make

# Include the progress variables for this target.
include examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/progress.make

# Include the compile flags for this target's objects.
include examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/flags.make

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/flags.make
examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o: /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasAkzoNob_dns.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o   -c /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasAkzoNob_dns.c

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.i"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasAkzoNob_dns.c > CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.i

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.s"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && /opt/rh/devtoolset-3/root/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial/idasAkzoNob_dns.c -o CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.s

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.requires:

.PHONY : examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.requires

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.provides: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.requires
	$(MAKE) -f examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/build.make examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.provides.build
.PHONY : examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.provides

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.provides.build: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o


# Object files for target idasAkzoNob_dns
idasAkzoNob_dns_OBJECTS = \
"CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o"

# External object files for target idasAkzoNob_dns
idasAkzoNob_dns_EXTERNAL_OBJECTS =

examples/idas/serial/idasAkzoNob_dns: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o
examples/idas/serial/idasAkzoNob_dns: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/build.make
examples/idas/serial/idasAkzoNob_dns: src/idas/libsundials_idas.so.2.1.0
examples/idas/serial/idasAkzoNob_dns: src/nvec_ser/libsundials_nvecserial.so.3.1.0
examples/idas/serial/idasAkzoNob_dns: /usr/lib64/librt.so
examples/idas/serial/idasAkzoNob_dns: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable idasAkzoNob_dns"
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/idasAkzoNob_dns.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/build: examples/idas/serial/idasAkzoNob_dns

.PHONY : examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/build

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/requires: examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/idasAkzoNob_dns.c.o.requires

.PHONY : examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/requires

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/clean:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial && $(CMAKE_COMMAND) -P CMakeFiles/idasAkzoNob_dns.dir/cmake_clean.cmake
.PHONY : examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/clean

examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/depend:
	cd /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0 /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0/examples/idas/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial /users/banspach/oss/third_party_os66/sundials/sundials-3.1.0-build/examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/idas/serial/CMakeFiles/idasAkzoNob_dns.dir/depend

