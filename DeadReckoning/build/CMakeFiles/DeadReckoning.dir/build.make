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
CMAKE_SOURCE_DIR = /home/frs2012-5/fuerte_workspace/DeadReckoning

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frs2012-5/fuerte_workspace/DeadReckoning/build

# Include any dependencies generated for this target.
include CMakeFiles/DeadReckoning.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/DeadReckoning.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/DeadReckoning.dir/flags.make

CMakeFiles/DeadReckoning.dir/src/main.o: CMakeFiles/DeadReckoning.dir/flags.make
CMakeFiles/DeadReckoning.dir/src/main.o: ../src/main.cpp
CMakeFiles/DeadReckoning.dir/src/main.o: ../manifest.xml
CMakeFiles/DeadReckoning.dir/src/main.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/DeadReckoning.dir/src/main.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/DeadReckoning.dir/src/main.o: /home/frs2012-5/fuerte_workspace/fmMsgs/manifest.xml
CMakeFiles/DeadReckoning.dir/src/main.o: /home/frs2012-5/fuerte_workspace/IMUDriver/manifest.xml
CMakeFiles/DeadReckoning.dir/src/main.o: /home/frs2012-5/fuerte_workspace/fmMsgs/msg_gen/generated
CMakeFiles/DeadReckoning.dir/src/main.o: /home/frs2012-5/fuerte_workspace/IMUDriver/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/DeadReckoning/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/DeadReckoning.dir/src/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/DeadReckoning.dir/src/main.o -c /home/frs2012-5/fuerte_workspace/DeadReckoning/src/main.cpp

CMakeFiles/DeadReckoning.dir/src/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/DeadReckoning.dir/src/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/DeadReckoning/src/main.cpp > CMakeFiles/DeadReckoning.dir/src/main.i

CMakeFiles/DeadReckoning.dir/src/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/DeadReckoning.dir/src/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/DeadReckoning/src/main.cpp -o CMakeFiles/DeadReckoning.dir/src/main.s

CMakeFiles/DeadReckoning.dir/src/main.o.requires:
.PHONY : CMakeFiles/DeadReckoning.dir/src/main.o.requires

CMakeFiles/DeadReckoning.dir/src/main.o.provides: CMakeFiles/DeadReckoning.dir/src/main.o.requires
	$(MAKE) -f CMakeFiles/DeadReckoning.dir/build.make CMakeFiles/DeadReckoning.dir/src/main.o.provides.build
.PHONY : CMakeFiles/DeadReckoning.dir/src/main.o.provides

CMakeFiles/DeadReckoning.dir/src/main.o.provides.build: CMakeFiles/DeadReckoning.dir/src/main.o

# Object files for target DeadReckoning
DeadReckoning_OBJECTS = \
"CMakeFiles/DeadReckoning.dir/src/main.o"

# External object files for target DeadReckoning
DeadReckoning_EXTERNAL_OBJECTS =

../bin/DeadReckoning: CMakeFiles/DeadReckoning.dir/src/main.o
../bin/DeadReckoning: CMakeFiles/DeadReckoning.dir/build.make
../bin/DeadReckoning: CMakeFiles/DeadReckoning.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/DeadReckoning"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/DeadReckoning.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/DeadReckoning.dir/build: ../bin/DeadReckoning
.PHONY : CMakeFiles/DeadReckoning.dir/build

CMakeFiles/DeadReckoning.dir/requires: CMakeFiles/DeadReckoning.dir/src/main.o.requires
.PHONY : CMakeFiles/DeadReckoning.dir/requires

CMakeFiles/DeadReckoning.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/DeadReckoning.dir/cmake_clean.cmake
.PHONY : CMakeFiles/DeadReckoning.dir/clean

CMakeFiles/DeadReckoning.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/DeadReckoning/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/DeadReckoning /home/frs2012-5/fuerte_workspace/DeadReckoning /home/frs2012-5/fuerte_workspace/DeadReckoning/build /home/frs2012-5/fuerte_workspace/DeadReckoning/build /home/frs2012-5/fuerte_workspace/DeadReckoning/build/CMakeFiles/DeadReckoning.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/DeadReckoning.dir/depend

