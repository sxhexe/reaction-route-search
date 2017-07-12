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
include src/formats/CMakeFiles/stlformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/stlformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/stlformat.dir/flags.make

src/formats/CMakeFiles/stlformat.dir/stlformat.o: src/formats/CMakeFiles/stlformat.dir/flags.make
src/formats/CMakeFiles/stlformat.dir/stlformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/stlformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/stlformat.dir/stlformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/stlformat.dir/stlformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/stlformat.cpp

src/formats/CMakeFiles/stlformat.dir/stlformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stlformat.dir/stlformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/stlformat.cpp > CMakeFiles/stlformat.dir/stlformat.i

src/formats/CMakeFiles/stlformat.dir/stlformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stlformat.dir/stlformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/stlformat.cpp -o CMakeFiles/stlformat.dir/stlformat.s

src/formats/CMakeFiles/stlformat.dir/stlformat.o.requires:
.PHONY : src/formats/CMakeFiles/stlformat.dir/stlformat.o.requires

src/formats/CMakeFiles/stlformat.dir/stlformat.o.provides: src/formats/CMakeFiles/stlformat.dir/stlformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/stlformat.dir/build.make src/formats/CMakeFiles/stlformat.dir/stlformat.o.provides.build
.PHONY : src/formats/CMakeFiles/stlformat.dir/stlformat.o.provides

src/formats/CMakeFiles/stlformat.dir/stlformat.o.provides.build: src/formats/CMakeFiles/stlformat.dir/stlformat.o

# Object files for target stlformat
stlformat_OBJECTS = \
"CMakeFiles/stlformat.dir/stlformat.o"

# External object files for target stlformat
stlformat_EXTERNAL_OBJECTS =

lib/stlformat.so: src/formats/CMakeFiles/stlformat.dir/stlformat.o
lib/stlformat.so: src/formats/CMakeFiles/stlformat.dir/build.make
lib/stlformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/stlformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/stlformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/stlformat.so: lib/libinchi.so.0.4.1
lib/stlformat.so: lib/libopenbabel.so.5.0.0
lib/stlformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/stlformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/stlformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/stlformat.so: src/formats/CMakeFiles/stlformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/stlformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stlformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/stlformat.dir/build: lib/stlformat.so
.PHONY : src/formats/CMakeFiles/stlformat.dir/build

src/formats/CMakeFiles/stlformat.dir/requires: src/formats/CMakeFiles/stlformat.dir/stlformat.o.requires
.PHONY : src/formats/CMakeFiles/stlformat.dir/requires

src/formats/CMakeFiles/stlformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/stlformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/stlformat.dir/clean

src/formats/CMakeFiles/stlformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/stlformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/stlformat.dir/depend
