# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mherbert/Desktop/pico-w

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mherbert/Desktop/pico-w/cmake-build-debug

# Utility rule file for ELF2UF2Build.

# Include any custom commands dependencies for this target.
include hello_world/serial/CMakeFiles/ELF2UF2Build.dir/compiler_depend.make

# Include the progress variables for this target.
include hello_world/serial/CMakeFiles/ELF2UF2Build.dir/progress.make

hello_world/serial/CMakeFiles/ELF2UF2Build: hello_world/serial/CMakeFiles/ELF2UF2Build-complete

hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build
hello_world/serial/CMakeFiles/ELF2UF2Build-complete: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E make_directory /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/CMakeFiles
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/CMakeFiles/ELF2UF2Build-complete
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-done

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing build step for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/elf2uf2 && $(MAKE)

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure: hello_world/serial/elf2uf2/tmp/ELF2UF2Build-cfgcmd.txt
hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Performing configure step for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/elf2uf2 && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -DCMAKE_MAKE_PROGRAM:FILEPATH=/usr/bin/make "-GCodeBlocks - Unix Makefiles" /Users/mherbert/pico-sdk/tools/elf2uf2
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/elf2uf2 && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-source_dirinfo.txt
hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "No download step for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/elf2uf2 && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/elf2uf2 && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -P /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/tmp/ELF2UF2Build-mkdirs.cmake
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch

hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/mherbert/Desktop/pico-w/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No update step for 'ELF2UF2Build'"
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E echo_append
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E touch /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update

ELF2UF2Build: hello_world/serial/CMakeFiles/ELF2UF2Build
ELF2UF2Build: hello_world/serial/CMakeFiles/ELF2UF2Build-complete
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-build
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-configure
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-download
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-install
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-mkdir
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-patch
ELF2UF2Build: hello_world/serial/elf2uf2/src/ELF2UF2Build-stamp/ELF2UF2Build-update
ELF2UF2Build: hello_world/serial/CMakeFiles/ELF2UF2Build.dir/build.make
.PHONY : ELF2UF2Build

# Rule to build all files generated by this target.
hello_world/serial/CMakeFiles/ELF2UF2Build.dir/build: ELF2UF2Build
.PHONY : hello_world/serial/CMakeFiles/ELF2UF2Build.dir/build

hello_world/serial/CMakeFiles/ELF2UF2Build.dir/clean:
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial && $(CMAKE_COMMAND) -P CMakeFiles/ELF2UF2Build.dir/cmake_clean.cmake
.PHONY : hello_world/serial/CMakeFiles/ELF2UF2Build.dir/clean

hello_world/serial/CMakeFiles/ELF2UF2Build.dir/depend:
	cd /Users/mherbert/Desktop/pico-w/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mherbert/Desktop/pico-w /Users/mherbert/Desktop/pico-w/hello_world/serial /Users/mherbert/Desktop/pico-w/cmake-build-debug /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial /Users/mherbert/Desktop/pico-w/cmake-build-debug/hello_world/serial/CMakeFiles/ELF2UF2Build.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : hello_world/serial/CMakeFiles/ELF2UF2Build.dir/depend

