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
CMAKE_BINARY_DIR = /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build

# Include any dependencies generated for this target.
include CMakeFiles/Log.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Log.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Log.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Log.dir/flags.make

CMakeFiles/Log.dir/src/log.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/src/log.cpp.o: /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/src/log.cpp
CMakeFiles/Log.dir/src/log.cpp.o: CMakeFiles/Log.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Log.dir/src/log.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Log.dir/src/log.cpp.o -MF CMakeFiles/Log.dir/src/log.cpp.o.d -o CMakeFiles/Log.dir/src/log.cpp.o -c /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/src/log.cpp

CMakeFiles/Log.dir/src/log.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/src/log.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/src/log.cpp > CMakeFiles/Log.dir/src/log.cpp.i

CMakeFiles/Log.dir/src/log.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/src/log.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/src/log.cpp -o CMakeFiles/Log.dir/src/log.cpp.s

CMakeFiles/Log.dir/example/main.cpp.o: CMakeFiles/Log.dir/flags.make
CMakeFiles/Log.dir/example/main.cpp.o: /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp
CMakeFiles/Log.dir/example/main.cpp.o: CMakeFiles/Log.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Log.dir/example/main.cpp.o"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Log.dir/example/main.cpp.o -MF CMakeFiles/Log.dir/example/main.cpp.o.d -o CMakeFiles/Log.dir/example/main.cpp.o -c /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp

CMakeFiles/Log.dir/example/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Log.dir/example/main.cpp.i"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp > CMakeFiles/Log.dir/example/main.cpp.i

CMakeFiles/Log.dir/example/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Log.dir/example/main.cpp.s"
	/usr/bin/clang++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/example/main.cpp -o CMakeFiles/Log.dir/example/main.cpp.s

# Object files for target Log
Log_OBJECTS = \
"CMakeFiles/Log.dir/src/log.cpp.o" \
"CMakeFiles/Log.dir/example/main.cpp.o"

# External object files for target Log
Log_EXTERNAL_OBJECTS =

Log: CMakeFiles/Log.dir/src/log.cpp.o
Log: CMakeFiles/Log.dir/example/main.cpp.o
Log: CMakeFiles/Log.dir/build.make
Log: /usr/local/lib/libfmt.9.1.0.dylib
Log: CMakeFiles/Log.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Log"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Log.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Log.dir/build: Log
.PHONY : CMakeFiles/Log.dir/build

CMakeFiles/Log.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Log.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Log.dir/clean

CMakeFiles/Log.dir/depend:
	cd /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build /Users/tanghaozhe/WorkSpace/Basic/CPP/Logger/build/CMakeFiles/Log.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Log.dir/depend

