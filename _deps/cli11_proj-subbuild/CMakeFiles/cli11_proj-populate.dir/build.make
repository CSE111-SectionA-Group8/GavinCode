# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild

# Utility rule file for cli11_proj-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/cli11_proj-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/cli11_proj-populate.dir/progress.make

CMakeFiles/cli11_proj-populate: CMakeFiles/cli11_proj-populate-complete

CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-install
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-mkdir
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-download
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-patch
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-configure
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-build
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-install
CMakeFiles/cli11_proj-populate-complete: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'cli11_proj-populate'"
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles/cli11_proj-populate-complete
	/usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-done

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update:
.PHONY : cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-build: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'cli11_proj-populate'"
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-build

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-configure: cli11_proj-populate-prefix/tmp/cli11_proj-populate-cfgcmd.txt
cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-configure: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'cli11_proj-populate'"
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-configure

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-download: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-gitinfo.txt
cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-download: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'cli11_proj-populate'"
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps && /usr/bin/cmake -P /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/tmp/cli11_proj-populate-gitclone.cmake
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps && /usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-download

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-install: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'cli11_proj-populate'"
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-install

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'cli11_proj-populate'"
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-src
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src
	/usr/bin/cmake -E make_directory /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp
	/usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-mkdir

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-patch: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'cli11_proj-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-patch

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update:
.PHONY : cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-test: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'cli11_proj-populate'"
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E echo_append
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-build && /usr/bin/cmake -E touch /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-test

cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'cli11_proj-populate'"
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-src && /usr/bin/cmake -P /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/cli11_proj-populate-prefix/tmp/cli11_proj-populate-gitupdate.cmake

cli11_proj-populate: CMakeFiles/cli11_proj-populate
cli11_proj-populate: CMakeFiles/cli11_proj-populate-complete
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-build
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-configure
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-download
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-install
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-mkdir
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-patch
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-test
cli11_proj-populate: cli11_proj-populate-prefix/src/cli11_proj-populate-stamp/cli11_proj-populate-update
cli11_proj-populate: CMakeFiles/cli11_proj-populate.dir/build.make
.PHONY : cli11_proj-populate

# Rule to build all files generated by this target.
CMakeFiles/cli11_proj-populate.dir/build: cli11_proj-populate
.PHONY : CMakeFiles/cli11_proj-populate.dir/build

CMakeFiles/cli11_proj-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/cli11_proj-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/cli11_proj-populate.dir/clean

CMakeFiles/cli11_proj-populate.dir/depend:
	cd /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild /mnt/c/Users/gesta/Documents/GitHub/final_project/_deps/cli11_proj-subbuild/CMakeFiles/cli11_proj-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cli11_proj-populate.dir/depend

