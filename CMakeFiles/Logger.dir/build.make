# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger

# Include any dependencies generated for this target.
include CMakeFiles/Logger.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Logger.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Logger.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Logger.dir/flags.make

CMakeFiles/Logger.dir/example/main.cpp.o: CMakeFiles/Logger.dir/flags.make
CMakeFiles/Logger.dir/example/main.cpp.o: example/main.cpp
CMakeFiles/Logger.dir/example/main.cpp.o: CMakeFiles/Logger.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Logger.dir/example/main.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Logger.dir/example/main.cpp.o -MF CMakeFiles/Logger.dir/example/main.cpp.o.d -o CMakeFiles/Logger.dir/example/main.cpp.o -c /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp

CMakeFiles/Logger.dir/example/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Logger.dir/example/main.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp > CMakeFiles/Logger.dir/example/main.cpp.i

CMakeFiles/Logger.dir/example/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Logger.dir/example/main.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp -o CMakeFiles/Logger.dir/example/main.cpp.s

# Object files for target Logger
Logger_OBJECTS = \
"CMakeFiles/Logger.dir/example/main.cpp.o"

# External object files for target Logger
Logger_EXTERNAL_OBJECTS =

Logger: CMakeFiles/Logger.dir/example/main.cpp.o
Logger: CMakeFiles/Logger.dir/build.make
Logger: CMakeFiles/Logger.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Logger"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Logger.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Logger.dir/build: Logger
.PHONY : CMakeFiles/Logger.dir/build

CMakeFiles/Logger.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Logger.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Logger.dir/clean

CMakeFiles/Logger.dir/depend:
	cd /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/CMakeFiles/Logger.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Logger.dir/depend

