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
include CMakeFiles/Strategist.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Strategist.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Strategist.dir/flags.make

CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: CMakeFiles/Strategist.dir/flags.make
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: ../src/Strategist/Strategist.cpp
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: ../manifest.xml
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /home/frs2012-5/fuerte_workspace/SerialDriver/manifest.xml
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /home/frs2012-5/fuerte_workspace/TOSNETDriver/manifest.xml
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /home/frs2012-5/fuerte_workspace/SerialDriver/msg_gen/generated
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /home/frs2012-5/fuerte_workspace/SerialDriver/srv_gen/generated
CMakeFiles/Strategist.dir/src/Strategist/Strategist.o: /home/frs2012-5/fuerte_workspace/TOSNETDriver/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/Strategist.dir/src/Strategist/Strategist.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/Strategist.dir/src/Strategist/Strategist.o -c /home/frs2012-5/fuerte_workspace/botI/src/Strategist/Strategist.cpp

CMakeFiles/Strategist.dir/src/Strategist/Strategist.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Strategist.dir/src/Strategist/Strategist.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/botI/src/Strategist/Strategist.cpp > CMakeFiles/Strategist.dir/src/Strategist/Strategist.i

CMakeFiles/Strategist.dir/src/Strategist/Strategist.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Strategist.dir/src/Strategist/Strategist.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/botI/src/Strategist/Strategist.cpp -o CMakeFiles/Strategist.dir/src/Strategist/Strategist.s

CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.requires:
.PHONY : CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.requires

CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.provides: CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.requires
	$(MAKE) -f CMakeFiles/Strategist.dir/build.make CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.provides.build
.PHONY : CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.provides

CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.provides.build: CMakeFiles/Strategist.dir/src/Strategist/Strategist.o

# Object files for target Strategist
Strategist_OBJECTS = \
"CMakeFiles/Strategist.dir/src/Strategist/Strategist.o"

# External object files for target Strategist
Strategist_EXTERNAL_OBJECTS =

../bin/Strategist: CMakeFiles/Strategist.dir/src/Strategist/Strategist.o
../bin/Strategist: CMakeFiles/Strategist.dir/build.make
../bin/Strategist: CMakeFiles/Strategist.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/Strategist"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Strategist.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Strategist.dir/build: ../bin/Strategist
.PHONY : CMakeFiles/Strategist.dir/build

CMakeFiles/Strategist.dir/requires: CMakeFiles/Strategist.dir/src/Strategist/Strategist.o.requires
.PHONY : CMakeFiles/Strategist.dir/requires

CMakeFiles/Strategist.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Strategist.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Strategist.dir/clean

CMakeFiles/Strategist.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/botI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/botI /home/frs2012-5/fuerte_workspace/botI /home/frs2012-5/fuerte_workspace/botI/build /home/frs2012-5/fuerte_workspace/botI/build /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles/Strategist.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Strategist.dir/depend

