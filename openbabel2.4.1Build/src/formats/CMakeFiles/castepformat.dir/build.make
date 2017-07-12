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
include src/formats/CMakeFiles/castepformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/castepformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/castepformat.dir/flags.make

src/formats/CMakeFiles/castepformat.dir/castepformat.o: src/formats/CMakeFiles/castepformat.dir/flags.make
src/formats/CMakeFiles/castepformat.dir/castepformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/castepformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/castepformat.dir/castepformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/castepformat.dir/castepformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/castepformat.cpp

src/formats/CMakeFiles/castepformat.dir/castepformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/castepformat.dir/castepformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/castepformat.cpp > CMakeFiles/castepformat.dir/castepformat.i

src/formats/CMakeFiles/castepformat.dir/castepformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/castepformat.dir/castepformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/castepformat.cpp -o CMakeFiles/castepformat.dir/castepformat.s

src/formats/CMakeFiles/castepformat.dir/castepformat.o.requires:
.PHONY : src/formats/CMakeFiles/castepformat.dir/castepformat.o.requires

src/formats/CMakeFiles/castepformat.dir/castepformat.o.provides: src/formats/CMakeFiles/castepformat.dir/castepformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/castepformat.dir/build.make src/formats/CMakeFiles/castepformat.dir/castepformat.o.provides.build
.PHONY : src/formats/CMakeFiles/castepformat.dir/castepformat.o.provides

src/formats/CMakeFiles/castepformat.dir/castepformat.o.provides.build: src/formats/CMakeFiles/castepformat.dir/castepformat.o

# Object files for target castepformat
castepformat_OBJECTS = \
"CMakeFiles/castepformat.dir/castepformat.o"

# External object files for target castepformat
castepformat_EXTERNAL_OBJECTS =

lib/castepformat.so: src/formats/CMakeFiles/castepformat.dir/castepformat.o
lib/castepformat.so: src/formats/CMakeFiles/castepformat.dir/build.make
lib/castepformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/castepformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/castepformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/castepformat.so: lib/libinchi.so.0.4.1
lib/castepformat.so: lib/libopenbabel.so.5.0.0
lib/castepformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/castepformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/castepformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/castepformat.so: src/formats/CMakeFiles/castepformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/castepformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/castepformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/castepformat.dir/build: lib/castepformat.so
.PHONY : src/formats/CMakeFiles/castepformat.dir/build

src/formats/CMakeFiles/castepformat.dir/requires: src/formats/CMakeFiles/castepformat.dir/castepformat.o.requires
.PHONY : src/formats/CMakeFiles/castepformat.dir/requires

src/formats/CMakeFiles/castepformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/castepformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/castepformat.dir/clean

src/formats/CMakeFiles/castepformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/castepformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/castepformat.dir/depend
