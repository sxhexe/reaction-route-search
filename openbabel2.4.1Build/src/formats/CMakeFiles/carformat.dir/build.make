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

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build

# Include any dependencies generated for this target.
include src/formats/CMakeFiles/carformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/carformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/carformat.dir/flags.make

src/formats/CMakeFiles/carformat.dir/carformat.o: src/formats/CMakeFiles/carformat.dir/flags.make
src/formats/CMakeFiles/carformat.dir/carformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/carformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/carformat.dir/carformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/carformat.dir/carformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/carformat.cpp

src/formats/CMakeFiles/carformat.dir/carformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/carformat.dir/carformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/carformat.cpp > CMakeFiles/carformat.dir/carformat.i

src/formats/CMakeFiles/carformat.dir/carformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/carformat.dir/carformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/carformat.cpp -o CMakeFiles/carformat.dir/carformat.s

src/formats/CMakeFiles/carformat.dir/carformat.o.requires:
.PHONY : src/formats/CMakeFiles/carformat.dir/carformat.o.requires

src/formats/CMakeFiles/carformat.dir/carformat.o.provides: src/formats/CMakeFiles/carformat.dir/carformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/carformat.dir/build.make src/formats/CMakeFiles/carformat.dir/carformat.o.provides.build
.PHONY : src/formats/CMakeFiles/carformat.dir/carformat.o.provides

src/formats/CMakeFiles/carformat.dir/carformat.o.provides.build: src/formats/CMakeFiles/carformat.dir/carformat.o

# Object files for target carformat
carformat_OBJECTS = \
"CMakeFiles/carformat.dir/carformat.o"

# External object files for target carformat
carformat_EXTERNAL_OBJECTS =

lib/carformat.so: src/formats/CMakeFiles/carformat.dir/carformat.o
lib/carformat.so: src/formats/CMakeFiles/carformat.dir/build.make
lib/carformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/carformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/carformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/carformat.so: lib/libinchi.so.0.4.1
lib/carformat.so: lib/libopenbabel.so.5.0.0
lib/carformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/carformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/carformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/carformat.so: src/formats/CMakeFiles/carformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/carformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/carformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/carformat.dir/build: lib/carformat.so
.PHONY : src/formats/CMakeFiles/carformat.dir/build

src/formats/CMakeFiles/carformat.dir/requires: src/formats/CMakeFiles/carformat.dir/carformat.o.requires
.PHONY : src/formats/CMakeFiles/carformat.dir/requires

src/formats/CMakeFiles/carformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/carformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/carformat.dir/clean

src/formats/CMakeFiles/carformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/carformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/carformat.dir/depend
