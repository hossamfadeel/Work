# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

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
CMAKE_SOURCE_DIR = /home/ctrluser/GitHub/libserial

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ctrluser/GitHub/libserial

# Include any dependencies generated for this target.
include src/CMakeFiles/libserial_shared.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/libserial_shared.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/libserial_shared.dir/flags.make

src/CMakeFiles/libserial_shared.dir/SerialPort.cpp.o: src/CMakeFiles/libserial_shared.dir/flags.make
src/CMakeFiles/libserial_shared.dir/SerialPort.cpp.o: src/SerialPort.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ctrluser/GitHub/libserial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/libserial_shared.dir/SerialPort.cpp.o"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserial_shared.dir/SerialPort.cpp.o -c /home/ctrluser/GitHub/libserial/src/SerialPort.cpp

src/CMakeFiles/libserial_shared.dir/SerialPort.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserial_shared.dir/SerialPort.cpp.i"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ctrluser/GitHub/libserial/src/SerialPort.cpp > CMakeFiles/libserial_shared.dir/SerialPort.cpp.i

src/CMakeFiles/libserial_shared.dir/SerialPort.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserial_shared.dir/SerialPort.cpp.s"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ctrluser/GitHub/libserial/src/SerialPort.cpp -o CMakeFiles/libserial_shared.dir/SerialPort.cpp.s

src/CMakeFiles/libserial_shared.dir/SerialStream.cpp.o: src/CMakeFiles/libserial_shared.dir/flags.make
src/CMakeFiles/libserial_shared.dir/SerialStream.cpp.o: src/SerialStream.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ctrluser/GitHub/libserial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/libserial_shared.dir/SerialStream.cpp.o"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserial_shared.dir/SerialStream.cpp.o -c /home/ctrluser/GitHub/libserial/src/SerialStream.cpp

src/CMakeFiles/libserial_shared.dir/SerialStream.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserial_shared.dir/SerialStream.cpp.i"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ctrluser/GitHub/libserial/src/SerialStream.cpp > CMakeFiles/libserial_shared.dir/SerialStream.cpp.i

src/CMakeFiles/libserial_shared.dir/SerialStream.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserial_shared.dir/SerialStream.cpp.s"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ctrluser/GitHub/libserial/src/SerialStream.cpp -o CMakeFiles/libserial_shared.dir/SerialStream.cpp.s

src/CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.o: src/CMakeFiles/libserial_shared.dir/flags.make
src/CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.o: src/SerialStreamBuf.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ctrluser/GitHub/libserial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.o"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.o -c /home/ctrluser/GitHub/libserial/src/SerialStreamBuf.cpp

src/CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.i"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/ctrluser/GitHub/libserial/src/SerialStreamBuf.cpp > CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.i

src/CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.s"
	cd /home/ctrluser/GitHub/libserial/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/ctrluser/GitHub/libserial/src/SerialStreamBuf.cpp -o CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.s

# Object files for target libserial_shared
libserial_shared_OBJECTS = \
"CMakeFiles/libserial_shared.dir/SerialPort.cpp.o" \
"CMakeFiles/libserial_shared.dir/SerialStream.cpp.o" \
"CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.o"

# External object files for target libserial_shared
libserial_shared_EXTERNAL_OBJECTS =

lib/libserial.so.1.0.0: src/CMakeFiles/libserial_shared.dir/SerialPort.cpp.o
lib/libserial.so.1.0.0: src/CMakeFiles/libserial_shared.dir/SerialStream.cpp.o
lib/libserial.so.1.0.0: src/CMakeFiles/libserial_shared.dir/SerialStreamBuf.cpp.o
lib/libserial.so.1.0.0: src/CMakeFiles/libserial_shared.dir/build.make
lib/libserial.so.1.0.0: src/CMakeFiles/libserial_shared.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ctrluser/GitHub/libserial/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library ../lib/libserial.so"
	cd /home/ctrluser/GitHub/libserial/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libserial_shared.dir/link.txt --verbose=$(VERBOSE)
	cd /home/ctrluser/GitHub/libserial/src && $(CMAKE_COMMAND) -E cmake_symlink_library ../lib/libserial.so.1.0.0 ../lib/libserial.so.1 ../lib/libserial.so

lib/libserial.so.1: lib/libserial.so.1.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libserial.so.1

lib/libserial.so: lib/libserial.so.1.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate lib/libserial.so

# Rule to build all files generated by this target.
src/CMakeFiles/libserial_shared.dir/build: lib/libserial.so

.PHONY : src/CMakeFiles/libserial_shared.dir/build

src/CMakeFiles/libserial_shared.dir/clean:
	cd /home/ctrluser/GitHub/libserial/src && $(CMAKE_COMMAND) -P CMakeFiles/libserial_shared.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/libserial_shared.dir/clean

src/CMakeFiles/libserial_shared.dir/depend:
	cd /home/ctrluser/GitHub/libserial && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ctrluser/GitHub/libserial /home/ctrluser/GitHub/libserial/src /home/ctrluser/GitHub/libserial /home/ctrluser/GitHub/libserial/src /home/ctrluser/GitHub/libserial/src/CMakeFiles/libserial_shared.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/libserial_shared.dir/depend

