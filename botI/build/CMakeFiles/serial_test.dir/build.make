# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/frs2012-5/fuerte_workspace/botI

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frs2012-5/fuerte_workspace/botI/build

# Include any dependencies generated for this target.
include CMakeFiles/serial_test.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serial_test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serial_test.dir/flags.make

CMakeFiles/serial_test.dir/src/Serial/test.o: CMakeFiles/serial_test.dir/flags.make
CMakeFiles/serial_test.dir/src/Serial/test.o: ../src/Serial/test.cpp
CMakeFiles/serial_test.dir/src/Serial/test.o: ../manifest.xml
CMakeFiles/serial_test.dir/src/Serial/test.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/serial_test.dir/src/Serial/test.o: /opt/ros/fuerte/share/roscpp/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serial_test.dir/src/Serial/test.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/serial_test.dir/src/Serial/test.o -c /home/frs2012-5/fuerte_workspace/botI/src/Serial/test.cpp

CMakeFiles/serial_test.dir/src/Serial/test.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial_test.dir/src/Serial/test.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/botI/src/Serial/test.cpp > CMakeFiles/serial_test.dir/src/Serial/test.i

CMakeFiles/serial_test.dir/src/Serial/test.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial_test.dir/src/Serial/test.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/botI/src/Serial/test.cpp -o CMakeFiles/serial_test.dir/src/Serial/test.s

CMakeFiles/serial_test.dir/src/Serial/test.o.requires:
.PHONY : CMakeFiles/serial_test.dir/src/Serial/test.o.requires

CMakeFiles/serial_test.dir/src/Serial/test.o.provides: CMakeFiles/serial_test.dir/src/Serial/test.o.requires
	$(MAKE) -f CMakeFiles/serial_test.dir/build.make CMakeFiles/serial_test.dir/src/Serial/test.o.provides.build
.PHONY : CMakeFiles/serial_test.dir/src/Serial/test.o.provides

CMakeFiles/serial_test.dir/src/Serial/test.o.provides.build: CMakeFiles/serial_test.dir/src/Serial/test.o

# Object files for target serial_test
serial_test_OBJECTS = \
"CMakeFiles/serial_test.dir/src/Serial/test.o"

# External object files for target serial_test
serial_test_EXTERNAL_OBJECTS =

../bin/serial_test: CMakeFiles/serial_test.dir/src/Serial/test.o
../bin/serial_test: CMakeFiles/serial_test.dir/build.make
../bin/serial_test: CMakeFiles/serial_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/serial_test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serial_test.dir/build: ../bin/serial_test
.PHONY : CMakeFiles/serial_test.dir/build

CMakeFiles/serial_test.dir/requires: CMakeFiles/serial_test.dir/src/Serial/test.o.requires
.PHONY : CMakeFiles/serial_test.dir/requires

CMakeFiles/serial_test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serial_test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serial_test.dir/clean

CMakeFiles/serial_test.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/botI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/botI /home/frs2012-5/fuerte_workspace/botI /home/frs2012-5/fuerte_workspace/botI/build /home/frs2012-5/fuerte_workspace/botI/build /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles/serial_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serial_test.dir/depend

