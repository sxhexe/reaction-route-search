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
include tools/CMakeFiles/obthermo.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obthermo.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obthermo.dir/flags.make

tools/CMakeFiles/obthermo.dir/obthermo.o: tools/CMakeFiles/obthermo.dir/flags.make
tools/CMakeFiles/obthermo.dir/obthermo.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obthermo.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/obthermo.dir/obthermo.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/obthermo.dir/obthermo.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obthermo.cpp

tools/CMakeFiles/obthermo.dir/obthermo.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obthermo.dir/obthermo.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obthermo.cpp > CMakeFiles/obthermo.dir/obthermo.i

tools/CMakeFiles/obthermo.dir/obthermo.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obthermo.dir/obthermo.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obthermo.cpp -o CMakeFiles/obthermo.dir/obthermo.s

tools/CMakeFiles/obthermo.dir/obthermo.o.requires:
.PHONY : tools/CMakeFiles/obthermo.dir/obthermo.o.requires

tools/CMakeFiles/obthermo.dir/obthermo.o.provides: tools/CMakeFiles/obthermo.dir/obthermo.o.requires
	$(MAKE) -f tools/CMakeFiles/obthermo.dir/build.make tools/CMakeFiles/obthermo.dir/obthermo.o.provides.build
.PHONY : tools/CMakeFiles/obthermo.dir/obthermo.o.provides

tools/CMakeFiles/obthermo.dir/obthermo.o.provides.build: tools/CMakeFiles/obthermo.dir/obthermo.o

# Object files for target obthermo
obthermo_OBJECTS = \
"CMakeFiles/obthermo.dir/obthermo.o"

# External object files for target obthermo
obthermo_EXTERNAL_OBJECTS =

bin/obthermo: tools/CMakeFiles/obthermo.dir/obthermo.o
bin/obthermo: tools/CMakeFiles/obthermo.dir/build.make
bin/obthermo: lib/libopenbabel.so.5.0.0
bin/obthermo: /usr/lib/x86_64-linux-gnu/libm.so
bin/obthermo: /usr/lib/x86_64-linux-gnu/libz.so
bin/obthermo: tools/CMakeFiles/obthermo.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obthermo"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obthermo.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obthermo.dir/build: bin/obthermo
.PHONY : tools/CMakeFiles/obthermo.dir/build

tools/CMakeFiles/obthermo.dir/requires: tools/CMakeFiles/obthermo.dir/obthermo.o.requires
.PHONY : tools/CMakeFiles/obthermo.dir/requires

tools/CMakeFiles/obthermo.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obthermo.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obthermo.dir/clean

tools/CMakeFiles/obthermo.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools/CMakeFiles/obthermo.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/obthermo.dir/depend
