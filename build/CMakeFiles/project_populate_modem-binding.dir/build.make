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

# Utility rule file for project_populate_modem-binding.

# Include the progress variables for this target.
include CMakeFiles/project_populate_modem-binding.dir/progress.make

CMakeFiles/project_populate_modem-binding: package/lib/afb-modem-binding.so


package/lib/afb-modem-binding.so: gpiod-mlk/afb-modem-binding.so
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/administrator/Documents/redpesk-try/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating package/lib/afb-modem-binding.so"
	mkdir -p /home/administrator/Documents/redpesk-try/build/package/lib
	touch /home/administrator/Documents/redpesk-try/build/package/lib
	cp -dr /home/administrator/Documents/redpesk-try/build/gpiod-mlk/afb-modem-binding.so/* /home/administrator/Documents/redpesk-try/build/package/lib 2> /dev/null || cp -d /home/administrator/Documents/redpesk-try/build/gpiod-mlk/afb-modem-binding.so /home/administrator/Documents/redpesk-try/build/package/lib

project_populate_modem-binding: CMakeFiles/project_populate_modem-binding
project_populate_modem-binding: package/lib/afb-modem-binding.so
project_populate_modem-binding: CMakeFiles/project_populate_modem-binding.dir/build.make

.PHONY : project_populate_modem-binding

# Rule to build all files generated by this target.
CMakeFiles/project_populate_modem-binding.dir/build: project_populate_modem-binding

.PHONY : CMakeFiles/project_populate_modem-binding.dir/build

CMakeFiles/project_populate_modem-binding.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/project_populate_modem-binding.dir/cmake_clean.cmake
.PHONY : CMakeFiles/project_populate_modem-binding.dir/clean

CMakeFiles/project_populate_modem-binding.dir/depend:
	cd /home/administrator/Documents/redpesk-try/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/administrator/Documents/redpesk-try /home/administrator/Documents/redpesk-try /home/administrator/Documents/redpesk-try/build /home/administrator/Documents/redpesk-try/build /home/administrator/Documents/redpesk-try/build/CMakeFiles/project_populate_modem-binding.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/project_populate_modem-binding.dir/depend

