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
include CMakeFiles/serial.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serial.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serial.dir/flags.make

CMakeFiles/serial.dir/src/Serial/main.o: CMakeFiles/serial.dir/flags.make
CMakeFiles/serial.dir/src/Serial/main.o: ../src/Serial/main.cpp
CMakeFiles/serial.dir/src/Serial/main.o: ../manifest.xml
CMakeFiles/serial.dir/src/Serial/main.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/serial.dir/src/Serial/main.o: /opt/ros/fuerte/share/roscpp/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serial.dir/src/Serial/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/serial.dir/src/Serial/main.o -c /home/frs2012-5/fuerte_workspace/botI/src/Serial/main.cpp

CMakeFiles/serial.dir/src/Serial/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/Serial/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/botI/src/Serial/main.cpp > CMakeFiles/serial.dir/src/Serial/main.i

CMakeFiles/serial.dir/src/Serial/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/Serial/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/botI/src/Serial/main.cpp -o CMakeFiles/serial.dir/src/Serial/main.s

CMakeFiles/serial.dir/src/Serial/main.o.requires:
.PHONY : CMakeFiles/serial.dir/src/Serial/main.o.requires

CMakeFiles/serial.dir/src/Serial/main.o.provides: CMakeFiles/serial.dir/src/Serial/main.o.requires
	$(MAKE) -f CMakeFiles/serial.dir/build.make CMakeFiles/serial.dir/src/Serial/main.o.provides.build
.PHONY : CMakeFiles/serial.dir/src/Serial/main.o.provides

CMakeFiles/serial.dir/src/Serial/main.o.provides.build: CMakeFiles/serial.dir/src/Serial/main.o

CMakeFiles/serial.dir/src/Serial/SerialService.o: CMakeFiles/serial.dir/flags.make
CMakeFiles/serial.dir/src/Serial/SerialService.o: ../src/Serial/SerialService.cpp
CMakeFiles/serial.dir/src/Serial/SerialService.o: ../manifest.xml
CMakeFiles/serial.dir/src/Serial/SerialService.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/serial.dir/src/Serial/SerialService.o: /opt/ros/fuerte/share/roscpp/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serial.dir/src/Serial/SerialService.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/serial.dir/src/Serial/SerialService.o -c /home/frs2012-5/fuerte_workspace/botI/src/Serial/SerialService.cpp

CMakeFiles/serial.dir/src/Serial/SerialService.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/Serial/SerialService.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/botI/src/Serial/SerialService.cpp > CMakeFiles/serial.dir/src/Serial/SerialService.i

CMakeFiles/serial.dir/src/Serial/SerialService.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/Serial/SerialService.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/botI/src/Serial/SerialService.cpp -o CMakeFiles/serial.dir/src/Serial/SerialService.s

CMakeFiles/serial.dir/src/Serial/SerialService.o.requires:
.PHONY : CMakeFiles/serial.dir/src/Serial/SerialService.o.requires

CMakeFiles/serial.dir/src/Serial/SerialService.o.provides: CMakeFiles/serial.dir/src/Serial/SerialService.o.requires
	$(MAKE) -f CMakeFiles/serial.dir/build.make CMakeFiles/serial.dir/src/Serial/SerialService.o.provides.build
.PHONY : CMakeFiles/serial.dir/src/Serial/SerialService.o.provides

CMakeFiles/serial.dir/src/Serial/SerialService.o.provides.build: CMakeFiles/serial.dir/src/Serial/SerialService.o

CMakeFiles/serial.dir/src/Serial/serial.o: CMakeFiles/serial.dir/flags.make
CMakeFiles/serial.dir/src/Serial/serial.o: ../src/Serial/serial.cpp
CMakeFiles/serial.dir/src/Serial/serial.o: ../manifest.xml
CMakeFiles/serial.dir/src/Serial/serial.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/serial.dir/src/Serial/serial.o: /opt/ros/fuerte/share/roscpp/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/serial.dir/src/Serial/serial.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/serial.dir/src/Serial/serial.o -c /home/frs2012-5/fuerte_workspace/botI/src/Serial/serial.cpp

CMakeFiles/serial.dir/src/Serial/serial.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/serial.dir/src/Serial/serial.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/botI/src/Serial/serial.cpp > CMakeFiles/serial.dir/src/Serial/serial.i

CMakeFiles/serial.dir/src/Serial/serial.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/serial.dir/src/Serial/serial.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/botI/src/Serial/serial.cpp -o CMakeFiles/serial.dir/src/Serial/serial.s

CMakeFiles/serial.dir/src/Serial/serial.o.requires:
.PHONY : CMakeFiles/serial.dir/src/Serial/serial.o.requires

CMakeFiles/serial.dir/src/Serial/serial.o.provides: CMakeFiles/serial.dir/src/Serial/serial.o.requires
	$(MAKE) -f CMakeFiles/serial.dir/build.make CMakeFiles/serial.dir/src/Serial/serial.o.provides.build
.PHONY : CMakeFiles/serial.dir/src/Serial/serial.o.provides

CMakeFiles/serial.dir/src/Serial/serial.o.provides.build: CMakeFiles/serial.dir/src/Serial/serial.o

# Object files for target serial
serial_OBJECTS = \
"CMakeFiles/serial.dir/src/Serial/main.o" \
"CMakeFiles/serial.dir/src/Serial/SerialService.o" \
"CMakeFiles/serial.dir/src/Serial/serial.o"

# External object files for target serial
serial_EXTERNAL_OBJECTS =

../bin/serial: CMakeFiles/serial.dir/src/Serial/main.o
../bin/serial: CMakeFiles/serial.dir/src/Serial/SerialService.o
../bin/serial: CMakeFiles/serial.dir/src/Serial/serial.o
../bin/serial: CMakeFiles/serial.dir/build.make
../bin/serial: CMakeFiles/serial.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/serial"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serial.dir/build: ../bin/serial
.PHONY : CMakeFiles/serial.dir/build

CMakeFiles/serial.dir/requires: CMakeFiles/serial.dir/src/Serial/main.o.requires
CMakeFiles/serial.dir/requires: CMakeFiles/serial.dir/src/Serial/SerialService.o.requires
CMakeFiles/serial.dir/requires: CMakeFiles/serial.dir/src/Serial/serial.o.requires
.PHONY : CMakeFiles/serial.dir/requires

CMakeFiles/serial.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serial.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serial.dir/clean

CMakeFiles/serial.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/botI/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/botI /home/frs2012-5/fuerte_workspace/botI /home/frs2012-5/fuerte_workspace/botI/build /home/frs2012-5/fuerte_workspace/botI/build /home/frs2012-5/fuerte_workspace/botI/build/CMakeFiles/serial.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/serial.dir/depend

