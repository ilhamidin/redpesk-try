# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/administrator/Documents/redpesk-try

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/administrator/Documents/redpesk-try/build

# Utility rule file for modem-binding_build_done.

# Include the progress variables for this target.
include CMakeFiles/modem-binding_build_done.dir/progress.make

CMakeFiles/modem-binding_build_done:
	/usr/bin/cmake -E cmake_echo_color --cyan ++\ Debug\ from\ afb-binder\ --port=1234\ \ --ldpaths=package\ --workdir=.\ --roothttp=../htdocs\ --verbose\ 

modem-binding_build_done: CMakeFiles/modem-binding_build_done
modem-binding_build_done: CMakeFiles/modem-binding_build_done.dir/build.make

.PHONY : modem-binding_build_done

# Rule to build all files generated by this target.
CMakeFiles/modem-binding_build_done.dir/build: modem-binding_build_done

.PHONY : CMakeFiles/modem-binding_build_done.dir/build

CMakeFiles/modem-binding_build_done.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/modem-binding_build_done.dir/cmake_clean.cmake
.PHONY : CMakeFiles/modem-binding_build_done.dir/clean

CMakeFiles/modem-binding_build_done.dir/depend:
	cd /home/administrator/Documents/redpesk-try/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/administrator/Documents/redpesk-try /home/administrator/Documents/redpesk-try /home/administrator/Documents/redpesk-try/build /home/administrator/Documents/redpesk-try/build /home/administrator/Documents/redpesk-try/build/CMakeFiles/modem-binding_build_done.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/modem-binding_build_done.dir/depend

