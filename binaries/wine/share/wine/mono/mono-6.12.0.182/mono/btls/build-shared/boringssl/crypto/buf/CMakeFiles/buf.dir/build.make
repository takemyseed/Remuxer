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
include boringssl/crypto/buf/CMakeFiles/buf.dir/depend.make

# Include the progress variables for this target.
include boringssl/crypto/buf/CMakeFiles/buf.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/crypto/buf/CMakeFiles/buf.dir/flags.make

boringssl/crypto/buf/CMakeFiles/buf.dir/buf.c.o: boringssl/crypto/buf/CMakeFiles/buf.dir/flags.make
boringssl/crypto/buf/CMakeFiles/buf.dir/buf.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/buf/buf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object boringssl/crypto/buf/CMakeFiles/buf.dir/buf.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/buf && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/buf.dir/buf.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/buf/buf.c

boringssl/crypto/buf/CMakeFiles/buf.dir/buf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/buf.dir/buf.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/buf && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/buf/buf.c > CMakeFiles/buf.dir/buf.c.i

boringssl/crypto/buf/CMakeFiles/buf.dir/buf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/buf.dir/buf.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/buf && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/buf/buf.c -o CMakeFiles/buf.dir/buf.c.s

buf: boringssl/crypto/buf/CMakeFiles/buf.dir/buf.c.o
buf: boringssl/crypto/buf/CMakeFiles/buf.dir/build.make

.PHONY : buf

# Rule to build all files generated by this target.
boringssl/crypto/buf/CMakeFiles/buf.dir/build: buf

.PHONY : boringssl/crypto/buf/CMakeFiles/buf.dir/build

boringssl/crypto/buf/CMakeFiles/buf.dir/clean:
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/buf && $(CMAKE_COMMAND) -P CMakeFiles/buf.dir/cmake_clean.cmake
.PHONY : boringssl/crypto/buf/CMakeFiles/buf.dir/clean

boringssl/crypto/buf/CMakeFiles/buf.dir/depend:
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/buf /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/buf /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/buf/CMakeFiles/buf.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/crypto/buf/CMakeFiles/buf.dir/depend
