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
include code_examples/CMakeFiles/hello_pacs_args.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include code_examples/CMakeFiles/hello_pacs_args.dir/compiler_depend.make

# Include the progress variables for this target.
include code_examples/CMakeFiles/hello_pacs_args.dir/progress.make

# Include the compile flags for this target's objects.
include code_examples/CMakeFiles/hello_pacs_args.dir/flags.make

code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o: code_examples/CMakeFiles/hello_pacs_args.dir/flags.make
code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o: /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/hello_pacs_args.cc
code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o: code_examples/CMakeFiles/hello_pacs_args.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o -MF CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o.d -o CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o -c /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/hello_pacs_args.cc

code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.i"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/hello_pacs_args.cc > CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.i

code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.s"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples/hello_pacs_args.cc -o CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.s

# Object files for target hello_pacs_args
hello_pacs_args_OBJECTS = \
"CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o"

# External object files for target hello_pacs_args
hello_pacs_args_EXTERNAL_OBJECTS =

code_examples/hello_pacs_args: code_examples/CMakeFiles/hello_pacs_args.dir/hello_pacs_args.cc.o
code_examples/hello_pacs_args: code_examples/CMakeFiles/hello_pacs_args.dir/build.make
code_examples/hello_pacs_args: code_examples/CMakeFiles/hello_pacs_args.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable hello_pacs_args"
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hello_pacs_args.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
code_examples/CMakeFiles/hello_pacs_args.dir/build: code_examples/hello_pacs_args
.PHONY : code_examples/CMakeFiles/hello_pacs_args.dir/build

code_examples/CMakeFiles/hello_pacs_args.dir/clean:
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples && $(CMAKE_COMMAND) -P CMakeFiles/hello_pacs_args.dir/cmake_clean.cmake
.PHONY : code_examples/CMakeFiles/hello_pacs_args.dir/clean

code_examples/CMakeFiles/hello_pacs_args.dir/depend:
	cd /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/code_examples /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples /mnt/c/Users/Usuario/Documents/PACS/p_03/PACS-master/build-release/code_examples/CMakeFiles/hello_pacs_args.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : code_examples/CMakeFiles/hello_pacs_args.dir/depend

