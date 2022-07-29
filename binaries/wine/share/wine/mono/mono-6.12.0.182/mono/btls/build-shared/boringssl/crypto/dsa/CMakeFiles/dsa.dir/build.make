# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared

# Include any dependencies generated for this target.
include boringssl/crypto/dsa/CMakeFiles/dsa.dir/depend.make

# Include the progress variables for this target.
include boringssl/crypto/dsa/CMakeFiles/dsa.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/crypto/dsa/CMakeFiles/dsa.dir/flags.make

boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa.c.o: boringssl/crypto/dsa/CMakeFiles/dsa.dir/flags.make
boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dsa.dir/dsa.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa.c

boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dsa.dir/dsa.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa.c > CMakeFiles/dsa.dir/dsa.c.i

boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dsa.dir/dsa.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa.c -o CMakeFiles/dsa.dir/dsa.c.s

boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa_asn1.c.o: boringssl/crypto/dsa/CMakeFiles/dsa.dir/flags.make
boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa_asn1.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa_asn1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa_asn1.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/dsa.dir/dsa_asn1.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa_asn1.c

boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa_asn1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/dsa.dir/dsa_asn1.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa_asn1.c > CMakeFiles/dsa.dir/dsa_asn1.c.i

boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa_asn1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/dsa.dir/dsa_asn1.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa/dsa_asn1.c -o CMakeFiles/dsa.dir/dsa_asn1.c.s

dsa: boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa.c.o
dsa: boringssl/crypto/dsa/CMakeFiles/dsa.dir/dsa_asn1.c.o
dsa: boringssl/crypto/dsa/CMakeFiles/dsa.dir/build.make

.PHONY : dsa

# Rule to build all files generated by this target.
boringssl/crypto/dsa/CMakeFiles/dsa.dir/build: dsa

.PHONY : boringssl/crypto/dsa/CMakeFiles/dsa.dir/build

boringssl/crypto/dsa/CMakeFiles/dsa.dir/clean:
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa && $(CMAKE_COMMAND) -P CMakeFiles/dsa.dir/cmake_clean.cmake
.PHONY : boringssl/crypto/dsa/CMakeFiles/dsa.dir/clean

boringssl/crypto/dsa/CMakeFiles/dsa.dir/depend:
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/dsa /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/dsa/CMakeFiles/dsa.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/crypto/dsa/CMakeFiles/dsa.dir/depend
