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
include tools/CMakeFiles/obsym.dir/depend.make

# Include the progress variables for this target.
include tools/CMakeFiles/obsym.dir/progress.make

# Include the compile flags for this target's objects.
include tools/CMakeFiles/obsym.dir/flags.make

tools/CMakeFiles/obsym.dir/obsym.o: tools/CMakeFiles/obsym.dir/flags.make
tools/CMakeFiles/obsym.dir/obsym.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obsym.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object tools/CMakeFiles/obsym.dir/obsym.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/obsym.dir/obsym.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obsym.cpp

tools/CMakeFiles/obsym.dir/obsym.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obsym.dir/obsym.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obsym.cpp > CMakeFiles/obsym.dir/obsym.i

tools/CMakeFiles/obsym.dir/obsym.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obsym.dir/obsym.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools/obsym.cpp -o CMakeFiles/obsym.dir/obsym.s

tools/CMakeFiles/obsym.dir/obsym.o.requires:
.PHONY : tools/CMakeFiles/obsym.dir/obsym.o.requires

tools/CMakeFiles/obsym.dir/obsym.o.provides: tools/CMakeFiles/obsym.dir/obsym.o.requires
	$(MAKE) -f tools/CMakeFiles/obsym.dir/build.make tools/CMakeFiles/obsym.dir/obsym.o.provides.build
.PHONY : tools/CMakeFiles/obsym.dir/obsym.o.provides

tools/CMakeFiles/obsym.dir/obsym.o.provides.build: tools/CMakeFiles/obsym.dir/obsym.o

# Object files for target obsym
obsym_OBJECTS = \
"CMakeFiles/obsym.dir/obsym.o"

# External object files for target obsym
obsym_EXTERNAL_OBJECTS =

bin/obsym: tools/CMakeFiles/obsym.dir/obsym.o
bin/obsym: tools/CMakeFiles/obsym.dir/build.make
bin/obsym: lib/libopenbabel.so.5.0.0
bin/obsym: /usr/lib/x86_64-linux-gnu/libm.so
bin/obsym: /usr/lib/x86_64-linux-gnu/libz.so
bin/obsym: tools/CMakeFiles/obsym.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/obsym"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obsym.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/CMakeFiles/obsym.dir/build: bin/obsym
.PHONY : tools/CMakeFiles/obsym.dir/build

tools/CMakeFiles/obsym.dir/requires: tools/CMakeFiles/obsym.dir/obsym.o.requires
.PHONY : tools/CMakeFiles/obsym.dir/requires

tools/CMakeFiles/obsym.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools && $(CMAKE_COMMAND) -P CMakeFiles/obsym.dir/cmake_clean.cmake
.PHONY : tools/CMakeFiles/obsym.dir/clean

tools/CMakeFiles/obsym.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/tools /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/tools/CMakeFiles/obsym.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/CMakeFiles/obsym.dir/depend
