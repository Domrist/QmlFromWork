# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.30

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
CMAKE_SOURCE_DIR = /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug

# Include any dependencies generated for this target.
include CMakeFiles/ModelView.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ModelView.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ModelView.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ModelView.dir/flags.make

CMakeFiles/ModelView.dir/Model.cpp.o: CMakeFiles/ModelView.dir/flags.make
CMakeFiles/ModelView.dir/Model.cpp.o: /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/Model.cpp
CMakeFiles/ModelView.dir/Model.cpp.o: CMakeFiles/ModelView.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ModelView.dir/Model.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ModelView.dir/Model.cpp.o -MF CMakeFiles/ModelView.dir/Model.cpp.o.d -o CMakeFiles/ModelView.dir/Model.cpp.o -c /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/Model.cpp

CMakeFiles/ModelView.dir/Model.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ModelView.dir/Model.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/Model.cpp > CMakeFiles/ModelView.dir/Model.cpp.i

CMakeFiles/ModelView.dir/Model.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ModelView.dir/Model.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/Model.cpp -o CMakeFiles/ModelView.dir/Model.cpp.s

CMakeFiles/ModelView.dir/View.cpp.o: CMakeFiles/ModelView.dir/flags.make
CMakeFiles/ModelView.dir/View.cpp.o: /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/View.cpp
CMakeFiles/ModelView.dir/View.cpp.o: CMakeFiles/ModelView.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ModelView.dir/View.cpp.o"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ModelView.dir/View.cpp.o -MF CMakeFiles/ModelView.dir/View.cpp.o.d -o CMakeFiles/ModelView.dir/View.cpp.o -c /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/View.cpp

CMakeFiles/ModelView.dir/View.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/ModelView.dir/View.cpp.i"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/View.cpp > CMakeFiles/ModelView.dir/View.cpp.i

CMakeFiles/ModelView.dir/View.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/ModelView.dir/View.cpp.s"
	/usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/View.cpp -o CMakeFiles/ModelView.dir/View.cpp.s

# Object files for target ModelView
ModelView_OBJECTS = \
"CMakeFiles/ModelView.dir/Model.cpp.o" \
"CMakeFiles/ModelView.dir/View.cpp.o"

# External object files for target ModelView
ModelView_EXTERNAL_OBJECTS =

libModelView.so: CMakeFiles/ModelView.dir/Model.cpp.o
libModelView.so: CMakeFiles/ModelView.dir/View.cpp.o
libModelView.so: CMakeFiles/ModelView.dir/build.make
libModelView.so: CMakeFiles/ModelView.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libModelView.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ModelView.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ModelView.dir/build: libModelView.so
.PHONY : CMakeFiles/ModelView.dir/build

CMakeFiles/ModelView.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ModelView.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ModelView.dir/clean

CMakeFiles/ModelView.dir/depend:
	cd /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug /home/user/da/pro/DenisSandbox/QmlTest/QmlTest/ModelView/build/Desktop-Debug/CMakeFiles/ModelView.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/ModelView.dir/depend
