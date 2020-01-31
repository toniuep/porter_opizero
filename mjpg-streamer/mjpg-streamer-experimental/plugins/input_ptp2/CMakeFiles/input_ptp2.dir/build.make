# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/mjpg-streamer/mjpg-streamer-experimental

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/mjpg-streamer/mjpg-streamer-experimental

# Include any dependencies generated for this target.
include plugins/input_ptp2/CMakeFiles/input_ptp2.dir/depend.make

# Include the progress variables for this target.
include plugins/input_ptp2/CMakeFiles/input_ptp2.dir/progress.make

# Include the compile flags for this target's objects.
include plugins/input_ptp2/CMakeFiles/input_ptp2.dir/flags.make

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/flags.make
plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o: plugins/input_ptp2/input_ptp2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/mjpg-streamer/mjpg-streamer-experimental/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o"
	cd /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/input_ptp2.dir/input_ptp2.c.o   -c /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2/input_ptp2.c

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/input_ptp2.dir/input_ptp2.c.i"
	cd /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2/input_ptp2.c > CMakeFiles/input_ptp2.dir/input_ptp2.c.i

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/input_ptp2.dir/input_ptp2.c.s"
	cd /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 && /usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2/input_ptp2.c -o CMakeFiles/input_ptp2.dir/input_ptp2.c.s

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.requires:

.PHONY : plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.requires

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.provides: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.requires
	$(MAKE) -f plugins/input_ptp2/CMakeFiles/input_ptp2.dir/build.make plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.provides.build
.PHONY : plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.provides

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.provides.build: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o


# Object files for target input_ptp2
input_ptp2_OBJECTS = \
"CMakeFiles/input_ptp2.dir/input_ptp2.c.o"

# External object files for target input_ptp2
input_ptp2_EXTERNAL_OBJECTS =

plugins/input_ptp2/input_ptp2.so: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o
plugins/input_ptp2/input_ptp2.so: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/build.make
plugins/input_ptp2/input_ptp2.so: /usr/lib/arm-linux-gnueabihf/libgphoto2.so
plugins/input_ptp2/input_ptp2.so: /usr/lib/arm-linux-gnueabihf/libgphoto2_port.so
plugins/input_ptp2/input_ptp2.so: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/mjpg-streamer/mjpg-streamer-experimental/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C shared library input_ptp2.so"
	cd /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/input_ptp2.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
plugins/input_ptp2/CMakeFiles/input_ptp2.dir/build: plugins/input_ptp2/input_ptp2.so

.PHONY : plugins/input_ptp2/CMakeFiles/input_ptp2.dir/build

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/requires: plugins/input_ptp2/CMakeFiles/input_ptp2.dir/input_ptp2.c.o.requires

.PHONY : plugins/input_ptp2/CMakeFiles/input_ptp2.dir/requires

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/clean:
	cd /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 && $(CMAKE_COMMAND) -P CMakeFiles/input_ptp2.dir/cmake_clean.cmake
.PHONY : plugins/input_ptp2/CMakeFiles/input_ptp2.dir/clean

plugins/input_ptp2/CMakeFiles/input_ptp2.dir/depend:
	cd /root/mjpg-streamer/mjpg-streamer-experimental && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/mjpg-streamer/mjpg-streamer-experimental /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 /root/mjpg-streamer/mjpg-streamer-experimental /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2 /root/mjpg-streamer/mjpg-streamer-experimental/plugins/input_ptp2/CMakeFiles/input_ptp2.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : plugins/input_ptp2/CMakeFiles/input_ptp2.dir/depend
