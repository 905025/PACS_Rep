# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.27

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
CMAKE_COMMAND = /snap/cmake/1336/bin/cmake

# The command to remove a file.
RM = /snap/cmake/1336/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release

# Include any dependencies generated for this target.
include code_examples/CMakeFiles/atomic_synchronization.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include code_examples/CMakeFiles/atomic_synchronization.dir/compiler_depend.make

# Include the progress variables for this target.
include code_examples/CMakeFiles/atomic_synchronization.dir/progress.make

# Include the compile flags for this target's objects.
include code_examples/CMakeFiles/atomic_synchronization.dir/flags.make

code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o: code_examples/CMakeFiles/atomic_synchronization.dir/flags.make
code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o: /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/atomic_synchronization.cc
code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o: code_examples/CMakeFiles/atomic_synchronization.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o -MF CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o.d -o CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o -c /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/atomic_synchronization.cc

code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.i"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/atomic_synchronization.cc > CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.i

code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.s"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/atomic_synchronization.cc -o CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.s

# Object files for target atomic_synchronization
atomic_synchronization_OBJECTS = \
"CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o"

# External object files for target atomic_synchronization
atomic_synchronization_EXTERNAL_OBJECTS =

code_examples/atomic_synchronization: code_examples/CMakeFiles/atomic_synchronization.dir/atomic_synchronization.cc.o
code_examples/atomic_synchronization: code_examples/CMakeFiles/atomic_synchronization.dir/build.make
code_examples/atomic_synchronization: code_examples/CMakeFiles/atomic_synchronization.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable atomic_synchronization"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/atomic_synchronization.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
code_examples/CMakeFiles/atomic_synchronization.dir/build: code_examples/atomic_synchronization
.PHONY : code_examples/CMakeFiles/atomic_synchronization.dir/build

code_examples/CMakeFiles/atomic_synchronization.dir/clean:
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && $(CMAKE_COMMAND) -P CMakeFiles/atomic_synchronization.dir/cmake_clean.cmake
.PHONY : code_examples/CMakeFiles/atomic_synchronization.dir/clean

code_examples/CMakeFiles/atomic_synchronization.dir/depend:
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples/CMakeFiles/atomic_synchronization.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : code_examples/CMakeFiles/atomic_synchronization.dir/depend

