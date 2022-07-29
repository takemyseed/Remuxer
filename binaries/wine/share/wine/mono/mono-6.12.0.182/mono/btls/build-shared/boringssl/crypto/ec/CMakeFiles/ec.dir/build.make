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
include boringssl/crypto/ec/CMakeFiles/ec.dir/depend.make

# Include the progress variables for this target.
include boringssl/crypto/ec/CMakeFiles/ec.dir/progress.make

# Include the compile flags for this target's objects.
include boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make

boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/asm/p256-x86_64-asm.pl
boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/perlasm/arm-xlate.pl
boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/perlasm/x86_64-xlate.pl
boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/perlasm/x86asm.pl
boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/perlasm/x86gas.pl
boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/perlasm/x86masm.pl
boringssl/crypto/ec/p256-x86_64-asm.S: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/perlasm/x86nasm.pl
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating p256-x86_64-asm.S"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/perl /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/asm/p256-x86_64-asm.pl elf > p256-x86_64-asm.S

boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/ec.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec.c

boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/ec.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec.c > CMakeFiles/ec.dir/ec.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/ec.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec.c -o CMakeFiles/ec.dir/ec.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_asn1.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/ec_asn1.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_asn1.c

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/ec_asn1.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_asn1.c > CMakeFiles/ec.dir/ec_asn1.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/ec_asn1.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_asn1.c -o CMakeFiles/ec.dir/ec_asn1.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_key.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/ec_key.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_key.c

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/ec_key.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_key.c > CMakeFiles/ec.dir/ec_key.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/ec_key.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_key.c -o CMakeFiles/ec.dir/ec_key.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_montgomery.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/ec_montgomery.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_montgomery.c

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/ec_montgomery.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_montgomery.c > CMakeFiles/ec.dir/ec_montgomery.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/ec_montgomery.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/ec_montgomery.c -o CMakeFiles/ec.dir/ec_montgomery.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/oct.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/oct.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/oct.c

boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/oct.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/oct.c > CMakeFiles/ec.dir/oct.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/oct.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/oct.c -o CMakeFiles/ec.dir/oct.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p224-64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/p224-64.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p224-64.c

boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/p224-64.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p224-64.c > CMakeFiles/ec.dir/p224-64.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/p224-64.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p224-64.c -o CMakeFiles/ec.dir/p224-64.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/p256-64.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-64.c

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/p256-64.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-64.c > CMakeFiles/ec.dir/p256-64.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/p256-64.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-64.c -o CMakeFiles/ec.dir/p256-64.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-x86_64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/p256-x86_64.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-x86_64.c

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/p256-x86_64.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-x86_64.c > CMakeFiles/ec.dir/p256-x86_64.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/p256-x86_64.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/p256-x86_64.c -o CMakeFiles/ec.dir/p256-x86_64.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/simple.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/simple.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/simple.c

boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/simple.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/simple.c > CMakeFiles/ec.dir/simple.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/simple.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/simple.c -o CMakeFiles/ec.dir/simple.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/util-64.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/util-64.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/util-64.c

boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/util-64.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/util-64.c > CMakeFiles/ec.dir/util-64.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/util-64.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/util-64.c -o CMakeFiles/ec.dir/util-64.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.o: /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/wnaf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Building C object boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ec.dir/wnaf.c.o   -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/wnaf.c

boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ec.dir/wnaf.c.i"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/wnaf.c > CMakeFiles/ec.dir/wnaf.c.i

boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ec.dir/wnaf.c.s"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec/wnaf.c -o CMakeFiles/ec.dir/wnaf.c.s

boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64-asm.S.o: boringssl/crypto/ec/CMakeFiles/ec.dir/flags.make
boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64-asm.S.o: boringssl/crypto/ec/p256-x86_64-asm.S
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/CMakeFiles --progress-num=$(CMAKE_PROGRESS_13) "Building ASM object boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64-asm.S.o"
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && /usr/bin/gcc $(ASM_DEFINES) $(ASM_INCLUDES) $(ASM_FLAGS) -o CMakeFiles/ec.dir/p256-x86_64-asm.S.o -c /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec/p256-x86_64-asm.S

ec: boringssl/crypto/ec/CMakeFiles/ec.dir/ec.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/ec_asn1.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/ec_key.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/ec_montgomery.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/oct.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/p224-64.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/p256-64.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/simple.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/util-64.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/wnaf.c.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/p256-x86_64-asm.S.o
ec: boringssl/crypto/ec/CMakeFiles/ec.dir/build.make

.PHONY : ec

# Rule to build all files generated by this target.
boringssl/crypto/ec/CMakeFiles/ec.dir/build: ec

.PHONY : boringssl/crypto/ec/CMakeFiles/ec.dir/build

boringssl/crypto/ec/CMakeFiles/ec.dir/clean:
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec && $(CMAKE_COMMAND) -P CMakeFiles/ec.dir/cmake_clean.cmake
.PHONY : boringssl/crypto/ec/CMakeFiles/ec.dir/clean

boringssl/crypto/ec/CMakeFiles/ec.dir/depend: boringssl/crypto/ec/p256-x86_64-asm.S
	cd /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/external/boringssl/crypto/ec /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec /usr/local/bin/mine/remux/binaries/wine/mono/mono-6.12.0.182/mono/btls/build-shared/boringssl/crypto/ec/CMakeFiles/ec.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : boringssl/crypto/ec/CMakeFiles/ec.dir/depend
