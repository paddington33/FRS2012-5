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
CMAKE_SOURCE_DIR = /home/frs2012-5/fuerte_workspace/fmCSP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frs2012-5/fuerte_workspace/fmCSP/build

# Include any dependencies generated for this target.
include CMakeFiles/serial_binary.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serial_binary.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serial_binary.dir/flags.make

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: CMakeFiles/serial_binary.dir/flags.make
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: ../src/Serial_Port/serial_binary/serial_binary.cpp
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: ../manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: /home/frs2012-5/fuerte_workspace/fmMsgs/manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o: /home/frs2012-5/fuerte_workspace/fmMsgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/fmCSP/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o -c /home/frs2012-5/fuerte_workspace/fmCSP/src/Serial_Port/serial_binary/serial_binary.cpp

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/fmCSP/src/Serial_Port/serial_binary/serial_binary.cpp > CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.i

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/fmCSP/src/Serial_Port/serial_binary/serial_binary.cpp -o CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.s

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.requires:
.PHONY : CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.requires

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.provides: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.requires
	$(MAKE) -f CMakeFiles/serial_binary.dir/build.make CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.provides.build
.PHONY : CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.provides

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.provides.build: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: CMakeFiles/serial_binary.dir/flags.make
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: ../src/Serial_Port/serial_binary/serial_binary_interface.cpp
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: ../manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: /home/frs2012-5/fuerte_workspace/fmMsgs/manifest.xml
CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o: /home/frs2012-5/fuerte_workspace/fmMsgs/msg_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/fmCSP/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o -c /home/frs2012-5/fuerte_workspace/fmCSP/src/Serial_Port/serial_binary/serial_binary_interface.cpp

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/fmCSP/src/Serial_Port/serial_binary/serial_binary_interface.cpp > CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.i

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/fmCSP/src/Serial_Port/serial_binary/serial_binary_interface.cpp -o CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.s

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.requires:
.PHONY : CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.requires

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.provides: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.requires
	$(MAKE) -f CMakeFiles/serial_binary.dir/build.make CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.provides.build
.PHONY : CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.provides

CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.provides.build: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o

# Object files for target serial_binary
serial_binary_OBJECTS = \
"CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o" \
"CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o"

# External object files for target serial_binary
serial_binary_EXTERNAL_OBJECTS =

../bin/serial_binary: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o
../bin/serial_binary: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o
../bin/serial_binary: CMakeFiles/serial_binary.dir/build.make
../bin/serial_binary: CMakeFiles/serial_binary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/serial_binary"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial_binary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serial_binary.dir/build: ../bin/serial_binary
.PHONY : CMakeFiles/serial_binary.dir/build

CMakeFiles/serial_binary.dir/requires: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary.o.requires
CMakeFiles/serial_binary.dir/requires: CMakeFiles/serial_binary.dir/src/Serial_Port/serial_binary/serial_binary_interface.o.requires
.PHONY : CMakeFiles/serial_binary.dir/requires

CMakeFiles/serial_binary.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serial_binary.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serial_binary.dir/clean

CMakeFiles/serial_binary.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/fmCSP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/fmCSP /home/frs2012-5/fuerte_workspace/fmCSP /home/frs2012-5/fuerte_workspace/fmCSP/build /home/frs2012-5/fuerte_workspace/fmCSP/build /home/frs2012-5/fuerte_workspace/fmCSP/build/CMakeFiles/serial_binary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serial_binary.dir/depend

