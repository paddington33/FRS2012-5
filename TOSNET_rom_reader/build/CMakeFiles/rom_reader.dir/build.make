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
CMAKE_SOURCE_DIR = /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/build

# Include any dependencies generated for this target.
include CMakeFiles/rom_reader.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rom_reader.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rom_reader.dir/flags.make

CMakeFiles/rom_reader.dir/src/main.o: CMakeFiles/rom_reader.dir/flags.make
CMakeFiles/rom_reader.dir/src/main.o: ../src/main.cpp
CMakeFiles/rom_reader.dir/src/main.o: ../manifest.xml
CMakeFiles/rom_reader.dir/src/main.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/rom_reader.dir/src/main.o: /opt/ros/fuerte/share/roscpp/manifest.xml
CMakeFiles/rom_reader.dir/src/main.o: /opt/ros/fuerte/share/std_msgs/manifest.xml
CMakeFiles/rom_reader.dir/src/main.o: /home/frs2012-5/fuerte_workspace/SerialDriver/manifest.xml
CMakeFiles/rom_reader.dir/src/main.o: /home/frs2012-5/fuerte_workspace/TOSNETDriver/manifest.xml
CMakeFiles/rom_reader.dir/src/main.o: /home/frs2012-5/fuerte_workspace/SerialDriver/msg_gen/generated
CMakeFiles/rom_reader.dir/src/main.o: /home/frs2012-5/fuerte_workspace/SerialDriver/srv_gen/generated
CMakeFiles/rom_reader.dir/src/main.o: /home/frs2012-5/fuerte_workspace/TOSNETDriver/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/rom_reader.dir/src/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/rom_reader.dir/src/main.o -c /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/src/main.cpp

CMakeFiles/rom_reader.dir/src/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rom_reader.dir/src/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/src/main.cpp > CMakeFiles/rom_reader.dir/src/main.i

CMakeFiles/rom_reader.dir/src/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rom_reader.dir/src/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/src/main.cpp -o CMakeFiles/rom_reader.dir/src/main.s

CMakeFiles/rom_reader.dir/src/main.o.requires:
.PHONY : CMakeFiles/rom_reader.dir/src/main.o.requires

CMakeFiles/rom_reader.dir/src/main.o.provides: CMakeFiles/rom_reader.dir/src/main.o.requires
	$(MAKE) -f CMakeFiles/rom_reader.dir/build.make CMakeFiles/rom_reader.dir/src/main.o.provides.build
.PHONY : CMakeFiles/rom_reader.dir/src/main.o.provides

CMakeFiles/rom_reader.dir/src/main.o.provides.build: CMakeFiles/rom_reader.dir/src/main.o

# Object files for target rom_reader
rom_reader_OBJECTS = \
"CMakeFiles/rom_reader.dir/src/main.o"

# External object files for target rom_reader
rom_reader_EXTERNAL_OBJECTS =

../bin/rom_reader: CMakeFiles/rom_reader.dir/src/main.o
../bin/rom_reader: CMakeFiles/rom_reader.dir/build.make
../bin/rom_reader: CMakeFiles/rom_reader.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/rom_reader"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rom_reader.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rom_reader.dir/build: ../bin/rom_reader
.PHONY : CMakeFiles/rom_reader.dir/build

CMakeFiles/rom_reader.dir/requires: CMakeFiles/rom_reader.dir/src/main.o.requires
.PHONY : CMakeFiles/rom_reader.dir/requires

CMakeFiles/rom_reader.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rom_reader.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rom_reader.dir/clean

CMakeFiles/rom_reader.dir/depend:
	cd /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/build /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/build /home/frs2012-5/fuerte_workspace/TOSNET_rom_reader/build/CMakeFiles/rom_reader.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rom_reader.dir/depend

