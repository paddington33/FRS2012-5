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
CMAKE_SOURCE_DIR = /home/frs2012-5/fuerte_workspace/SerialDriver

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frs2012-5/fuerte_workspace/SerialDriver/build

# Utility rule file for ROSBUILD_genmsg_py.

# Include the progress variables for this target.
include CMakeFiles/ROSBUILD_genmsg_py.dir/progress.make

CMakeFiles/ROSBUILD_genmsg_py: ../src/SerialDriver/msg/__init__.py

../src/SerialDriver/msg/__init__.py: ../src/SerialDriver/msg/_serial_mode.py
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/SerialDriver/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/SerialDriver/msg/__init__.py"
	/opt/ros/fuerte/share/rospy/rosbuild/scripts/genmsg_py.py --initpy /home/frs2012-5/fuerte_workspace/SerialDriver/msg/serial_mode.msg

../src/SerialDriver/msg/_serial_mode.py: ../msg/serial_mode.msg
../src/SerialDriver/msg/_serial_mode.py: /opt/ros/fuerte/share/rospy/rosbuild/scripts/genmsg_py.py
../src/SerialDriver/msg/_serial_mode.py: /opt/ros/fuerte/share/roslib/bin/gendeps
../src/SerialDriver/msg/_serial_mode.py: /opt/ros/fuerte/share/std_msgs/msg/Header.msg
../src/SerialDriver/msg/_serial_mode.py: ../manifest.xml
../src/SerialDriver/msg/_serial_mode.py: /opt/ros/fuerte/share/roslang/manifest.xml
../src/SerialDriver/msg/_serial_mode.py: /opt/ros/fuerte/share/roscpp/manifest.xml
../src/SerialDriver/msg/_serial_mode.py: /opt/ros/fuerte/share/std_msgs/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/SerialDriver/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../src/SerialDriver/msg/_serial_mode.py"
	/opt/ros/fuerte/share/rospy/rosbuild/scripts/genmsg_py.py --noinitpy /home/frs2012-5/fuerte_workspace/SerialDriver/msg/serial_mode.msg

ROSBUILD_genmsg_py: CMakeFiles/ROSBUILD_genmsg_py
ROSBUILD_genmsg_py: ../src/SerialDriver/msg/__init__.py
ROSBUILD_genmsg_py: ../src/SerialDriver/msg/_serial_mode.py
ROSBUILD_genmsg_py: CMakeFiles/ROSBUILD_genmsg_py.dir/build.make
.PHONY : ROSBUILD_genmsg_py

# Rule to build all files generated by this target.
CMakeFiles/ROSBUILD_genmsg_py.dir/build: ROSBUILD_genmsg_py
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/build

CMakeFiles/ROSBUILD_genmsg_py.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/clean

CMakeFiles/ROSBUILD_genmsg_py.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/SerialDriver/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/SerialDriver /home/frs2012-5/fuerte_workspace/SerialDriver /home/frs2012-5/fuerte_workspace/SerialDriver/build /home/frs2012-5/fuerte_workspace/SerialDriver/build /home/frs2012-5/fuerte_workspace/SerialDriver/build/CMakeFiles/ROSBUILD_genmsg_py.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ROSBUILD_genmsg_py.dir/depend

