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
include src/formats/CMakeFiles/smileyformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/smileyformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/smileyformat.dir/flags.make

src/formats/CMakeFiles/smileyformat.dir/smileyformat.o: src/formats/CMakeFiles/smileyformat.dir/flags.make
src/formats/CMakeFiles/smileyformat.dir/smileyformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/smileyformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/smileyformat.dir/smileyformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/smileyformat.dir/smileyformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/smileyformat.cpp

src/formats/CMakeFiles/smileyformat.dir/smileyformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/smileyformat.dir/smileyformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/smileyformat.cpp > CMakeFiles/smileyformat.dir/smileyformat.i

src/formats/CMakeFiles/smileyformat.dir/smileyformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/smileyformat.dir/smileyformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/smileyformat.cpp -o CMakeFiles/smileyformat.dir/smileyformat.s

src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.requires:
.PHONY : src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.requires

src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.provides: src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/smileyformat.dir/build.make src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.provides.build
.PHONY : src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.provides

src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.provides.build: src/formats/CMakeFiles/smileyformat.dir/smileyformat.o

# Object files for target smileyformat
smileyformat_OBJECTS = \
"CMakeFiles/smileyformat.dir/smileyformat.o"

# External object files for target smileyformat
smileyformat_EXTERNAL_OBJECTS =

lib/smileyformat.so: src/formats/CMakeFiles/smileyformat.dir/smileyformat.o
lib/smileyformat.so: src/formats/CMakeFiles/smileyformat.dir/build.make
lib/smileyformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/smileyformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/smileyformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/smileyformat.so: lib/libinchi.so.0.4.1
lib/smileyformat.so: lib/libopenbabel.so.5.0.0
lib/smileyformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/smileyformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/smileyformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/smileyformat.so: src/formats/CMakeFiles/smileyformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/smileyformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/smileyformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/smileyformat.dir/build: lib/smileyformat.so
.PHONY : src/formats/CMakeFiles/smileyformat.dir/build

src/formats/CMakeFiles/smileyformat.dir/requires: src/formats/CMakeFiles/smileyformat.dir/smileyformat.o.requires
.PHONY : src/formats/CMakeFiles/smileyformat.dir/requires

src/formats/CMakeFiles/smileyformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/smileyformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/smileyformat.dir/clean

src/formats/CMakeFiles/smileyformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/smileyformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/smileyformat.dir/depend
