# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/elizabeth/lab03/solver_application

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/elizabeth/lab03/solver_application/_build

# Include any dependencies generated for this target.
include CMakeFiles/source.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/source.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/source.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/source.dir/flags.make

CMakeFiles/source.dir/equation.cpp.o: CMakeFiles/source.dir/flags.make
CMakeFiles/source.dir/equation.cpp.o: /home/elizabeth/lab03/solver_application/equation.cpp
CMakeFiles/source.dir/equation.cpp.o: CMakeFiles/source.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/elizabeth/lab03/solver_application/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/source.dir/equation.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/source.dir/equation.cpp.o -MF CMakeFiles/source.dir/equation.cpp.o.d -o CMakeFiles/source.dir/equation.cpp.o -c /home/elizabeth/lab03/solver_application/equation.cpp

CMakeFiles/source.dir/equation.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/source.dir/equation.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/elizabeth/lab03/solver_application/equation.cpp > CMakeFiles/source.dir/equation.cpp.i

CMakeFiles/source.dir/equation.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/source.dir/equation.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/elizabeth/lab03/solver_application/equation.cpp -o CMakeFiles/source.dir/equation.cpp.s

# Object files for target source
source_OBJECTS = \
"CMakeFiles/source.dir/equation.cpp.o"

# External object files for target source
source_EXTERNAL_OBJECTS =

source: CMakeFiles/source.dir/equation.cpp.o
source: CMakeFiles/source.dir/build.make
source: /home/elizabeth/lab03/solver_application/solver_lib/libsolver_lib.a
source: /home/elizabeth/lab03/solver_application/formatter_ex/libformatter_ex.a
source: /home/elizabeth/lab03/solver_application/formatter/libformatter.a
source: CMakeFiles/source.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/elizabeth/lab03/solver_application/_build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable source"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/source.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/source.dir/build: source
.PHONY : CMakeFiles/source.dir/build

CMakeFiles/source.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/source.dir/cmake_clean.cmake
.PHONY : CMakeFiles/source.dir/clean

CMakeFiles/source.dir/depend:
	cd /home/elizabeth/lab03/solver_application/_build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/elizabeth/lab03/solver_application /home/elizabeth/lab03/solver_application /home/elizabeth/lab03/solver_application/_build /home/elizabeth/lab03/solver_application/_build /home/elizabeth/lab03/solver_application/_build/CMakeFiles/source.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/source.dir/depend

