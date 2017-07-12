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
include tools/CMakeFiles/obconformer.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obconformer.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obconformer.dir/flags.make

tools/CMakeFiles/obconformer.dir/obconformer.o: tools/CMakeFiles/obconformer.dir/flags.make
tools/CMakeFiles/obconformer.dir/obconformer.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obconformer.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/obconformer.dir/obconformer.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/obconformer.dir/obconformer.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obconformer.cpp

tools/CMakeFiles/obconformer.dir/obconformer.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obconformer.dir/obconformer.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obconformer.cpp > CMakeFiles/obconformer.dir/obconformer.i

tools/CMakeFiles/obconformer.dir/obconformer.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obconformer.dir/obconformer.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obconformer.cpp -o CMakeFiles/obconformer.dir/obconformer.s

tools/CMakeFiles/obconformer.dir/obconformer.o.requires:
.PHONY : tools/CMakeFiles/obconformer.dir/obconformer.o.requires

tools/CMakeFiles/obconformer.dir/obconformer.o.provides: tools/CMakeFiles/obconformer.dir/obconformer.o.requires
	$(MAKE) -f tools/CMakeFiles/obconformer.dir/build.make tools/CMakeFiles/obconformer.dir/obconformer.o.provides.build
.PHONY : tools/CMakeFiles/obconformer.dir/obconformer.o.provides

tools/CMakeFiles/obconformer.dir/obconformer.o.provides.build: tools/CMakeFiles/obconformer.dir/obconformer.o

# Object files for target obconformer
obconformer_OBJECTS = \
"CMakeFiles/obconformer.dir/obconformer.o"

# External object files for target obconformer
obconformer_EXTERNAL_OBJECTS =

bin/obconformer: tools/CMakeFiles/obconformer.dir/obconformer.o
bin/obconformer: tools/CMakeFiles/obconformer.dir/build.make
bin/obconformer: lib/libopenbabel.so.5.0.0
bin/obconformer: /usr/lib/x86_64-linux-gnu/libm.so
bin/obconformer: /usr/lib/x86_64-linux-gnu/libz.so
bin/obconformer: tools/CMakeFiles/obconformer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obconformer"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obconformer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obconformer.dir/build: bin/obconformer
.PHONY : tools/CMakeFiles/obconformer.dir/build

tools/CMakeFiles/obconformer.dir/requires: tools/CMakeFiles/obconformer.dir/obconformer.o.requires
.PHONY : tools/CMakeFiles/obconformer.dir/requires

tools/CMakeFiles/obconformer.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obconformer.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obconformer.dir/clean

tools/CMakeFiles/obconformer.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools/CMakeFiles/obconformer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/obconformer.dir/depend
