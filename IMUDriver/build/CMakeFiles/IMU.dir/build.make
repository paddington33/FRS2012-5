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
CMAKE_SOURCE_DIR = /home/frs2012-5/fuerte_workspace/IMUDriver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frs2012-5/fuerte_workspace/IMUDriver/build

# Include any dependencies generated for this target.
include CMakeFiles/IMU.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/IMU.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/IMU.dir/flags.make

CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: CMakeFiles/IMU.dir/flags.make
CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: ../src/sparkfun_razor_node.cpp
CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: ../manifest.xml
CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: /home/frs2012-5/fuerte_workspace/fmMsgs/manifest.xml
CMakeFiles/IMU.dir/src/sparkfun_razor_node.o: /home/frs2012-5/fuerte_workspace/fmMsgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/IMUDriver/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/IMU.dir/src/sparkfun_razor_node.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/IMU.dir/src/sparkfun_razor_node.o -c /home/frs2012-5/fuerte_workspace/IMUDriver/src/sparkfun_razor_node.cpp

CMakeFiles/IMU.dir/src/sparkfun_razor_node.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IMU.dir/src/sparkfun_razor_node.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/IMUDriver/src/sparkfun_razor_node.cpp > CMakeFiles/IMU.dir/src/sparkfun_razor_node.i

CMakeFiles/IMU.dir/src/sparkfun_razor_node.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IMU.dir/src/sparkfun_razor_node.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/IMUDriver/src/sparkfun_razor_node.cpp -o CMakeFiles/IMU.dir/src/sparkfun_razor_node.s

CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.requires:
.PHONY : CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.requires

CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.provides: CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.requires
	$(MAKE) -f CMakeFiles/IMU.dir/build.make CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.provides.build
.PHONY : CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.provides

CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.provides.build: CMakeFiles/IMU.dir/src/sparkfun_razor_node.o

CMakeFiles/IMU.dir/src/SparkFun9DOF.o: CMakeFiles/IMU.dir/flags.make
CMakeFiles/IMU.dir/src/SparkFun9DOF.o: ../src/SparkFun9DOF.cpp
CMakeFiles/IMU.dir/src/SparkFun9DOF.o: ../manifest.xml
CMakeFiles/IMU.dir/src/SparkFun9DOF.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/IMU.dir/src/SparkFun9DOF.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/IMU.dir/src/SparkFun9DOF.o: /home/frs2012-5/fuerte_workspace/fmMsgs/manifest.xml
CMakeFiles/IMU.dir/src/SparkFun9DOF.o: /home/frs2012-5/fuerte_workspace/fmMsgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/IMUDriver/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/IMU.dir/src/SparkFun9DOF.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/IMU.dir/src/SparkFun9DOF.o -c /home/frs2012-5/fuerte_workspace/IMUDriver/src/SparkFun9DOF.cpp

CMakeFiles/IMU.dir/src/SparkFun9DOF.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/IMU.dir/src/SparkFun9DOF.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/IMUDriver/src/SparkFun9DOF.cpp > CMakeFiles/IMU.dir/src/SparkFun9DOF.i

CMakeFiles/IMU.dir/src/SparkFun9DOF.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/IMU.dir/src/SparkFun9DOF.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/IMUDriver/src/SparkFun9DOF.cpp -o CMakeFiles/IMU.dir/src/SparkFun9DOF.s

CMakeFiles/IMU.dir/src/SparkFun9DOF.o.requires:
.PHONY : CMakeFiles/IMU.dir/src/SparkFun9DOF.o.requires

CMakeFiles/IMU.dir/src/SparkFun9DOF.o.provides: CMakeFiles/IMU.dir/src/SparkFun9DOF.o.requires
	$(MAKE) -f CMakeFiles/IMU.dir/build.make CMakeFiles/IMU.dir/src/SparkFun9DOF.o.provides.build
.PHONY : CMakeFiles/IMU.dir/src/SparkFun9DOF.o.provides

CMakeFiles/IMU.dir/src/SparkFun9DOF.o.provides.build: CMakeFiles/IMU.dir/src/SparkFun9DOF.o

# Object files for target IMU
IMU_OBJECTS = \
"CMakeFiles/IMU.dir/src/sparkfun_razor_node.o" \
"CMakeFiles/IMU.dir/src/SparkFun9DOF.o"

# External object files for target IMU
IMU_EXTERNAL_OBJECTS =

../bin/IMU: CMakeFiles/IMU.dir/src/sparkfun_razor_node.o
../bin/IMU: CMakeFiles/IMU.dir/src/SparkFun9DOF.o
../bin/IMU: CMakeFiles/IMU.dir/build.make
../bin/IMU: CMakeFiles/IMU.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/IMU"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/IMU.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/IMU.dir/build: ../bin/IMU
.PHONY : CMakeFiles/IMU.dir/build

CMakeFiles/IMU.dir/requires: CMakeFiles/IMU.dir/src/sparkfun_razor_node.o.requires
CMakeFiles/IMU.dir/requires: CMakeFiles/IMU.dir/src/SparkFun9DOF.o.requires
.PHONY : CMakeFiles/IMU.dir/requires

CMakeFiles/IMU.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/IMU.dir/cmake_clean.cmake
.PHONY : CMakeFiles/IMU.dir/clean

CMakeFiles/IMU.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/IMUDriver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/IMUDriver /home/frs2012-5/fuerte_workspace/IMUDriver /home/frs2012-5/fuerte_workspace/IMUDriver/build /home/frs2012-5/fuerte_workspace/IMUDriver/build /home/frs2012-5/fuerte_workspace/IMUDriver/build/CMakeFiles/IMU.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/IMU.dir/depend
