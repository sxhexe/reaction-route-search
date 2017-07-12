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
include src/formats/CMakeFiles/bgfformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/bgfformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/bgfformat.dir/flags.make

src/formats/CMakeFiles/bgfformat.dir/bgfformat.o: src/formats/CMakeFiles/bgfformat.dir/flags.make
src/formats/CMakeFiles/bgfformat.dir/bgfformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/bgfformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/bgfformat.dir/bgfformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/bgfformat.dir/bgfformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/bgfformat.cpp

src/formats/CMakeFiles/bgfformat.dir/bgfformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bgfformat.dir/bgfformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/bgfformat.cpp > CMakeFiles/bgfformat.dir/bgfformat.i

src/formats/CMakeFiles/bgfformat.dir/bgfformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bgfformat.dir/bgfformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/bgfformat.cpp -o CMakeFiles/bgfformat.dir/bgfformat.s

src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.requires:
.PHONY : src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.requires

src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.provides: src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/bgfformat.dir/build.make src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.provides.build
.PHONY : src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.provides

src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.provides.build: src/formats/CMakeFiles/bgfformat.dir/bgfformat.o

# Object files for target bgfformat
bgfformat_OBJECTS = \
"CMakeFiles/bgfformat.dir/bgfformat.o"

# External object files for target bgfformat
bgfformat_EXTERNAL_OBJECTS =

lib/bgfformat.so: src/formats/CMakeFiles/bgfformat.dir/bgfformat.o
lib/bgfformat.so: src/formats/CMakeFiles/bgfformat.dir/build.make
lib/bgfformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/bgfformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/bgfformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/bgfformat.so: lib/libinchi.so.0.4.1
lib/bgfformat.so: lib/libopenbabel.so.5.0.0
lib/bgfformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/bgfformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/bgfformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/bgfformat.so: src/formats/CMakeFiles/bgfformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/bgfformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/bgfformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/bgfformat.dir/build: lib/bgfformat.so
.PHONY : src/formats/CMakeFiles/bgfformat.dir/build

src/formats/CMakeFiles/bgfformat.dir/requires: src/formats/CMakeFiles/bgfformat.dir/bgfformat.o.requires
.PHONY : src/formats/CMakeFiles/bgfformat.dir/requires

src/formats/CMakeFiles/bgfformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/bgfformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/bgfformat.dir/clean

src/formats/CMakeFiles/bgfformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/bgfformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/bgfformat.dir/depend
