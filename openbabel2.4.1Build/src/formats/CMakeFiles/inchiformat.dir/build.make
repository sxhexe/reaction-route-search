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
include src/formats/CMakeFiles/inchiformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/inchiformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/inchiformat.dir/flags.make

src/formats/CMakeFiles/inchiformat.dir/inchiformat.o: src/formats/CMakeFiles/inchiformat.dir/flags.make
src/formats/CMakeFiles/inchiformat.dir/inchiformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/inchiformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/inchiformat.dir/inchiformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/inchiformat.dir/inchiformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/inchiformat.cpp

src/formats/CMakeFiles/inchiformat.dir/inchiformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inchiformat.dir/inchiformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/inchiformat.cpp > CMakeFiles/inchiformat.dir/inchiformat.i

src/formats/CMakeFiles/inchiformat.dir/inchiformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inchiformat.dir/inchiformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/inchiformat.cpp -o CMakeFiles/inchiformat.dir/inchiformat.s

src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.requires:
.PHONY : src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.requires

src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.provides: src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/inchiformat.dir/build.make src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.provides.build
.PHONY : src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.provides

src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.provides.build: src/formats/CMakeFiles/inchiformat.dir/inchiformat.o

src/formats/CMakeFiles/inchiformat.dir/getinchi.o: src/formats/CMakeFiles/inchiformat.dir/flags.make
src/formats/CMakeFiles/inchiformat.dir/getinchi.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/getinchi.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/inchiformat.dir/getinchi.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/inchiformat.dir/getinchi.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/getinchi.cpp

src/formats/CMakeFiles/inchiformat.dir/getinchi.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inchiformat.dir/getinchi.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/getinchi.cpp > CMakeFiles/inchiformat.dir/getinchi.i

src/formats/CMakeFiles/inchiformat.dir/getinchi.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inchiformat.dir/getinchi.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/getinchi.cpp -o CMakeFiles/inchiformat.dir/getinchi.s

src/formats/CMakeFiles/inchiformat.dir/getinchi.o.requires:
.PHONY : src/formats/CMakeFiles/inchiformat.dir/getinchi.o.requires

src/formats/CMakeFiles/inchiformat.dir/getinchi.o.provides: src/formats/CMakeFiles/inchiformat.dir/getinchi.o.requires
	$(MAKE) -f src/formats/CMakeFiles/inchiformat.dir/build.make src/formats/CMakeFiles/inchiformat.dir/getinchi.o.provides.build
.PHONY : src/formats/CMakeFiles/inchiformat.dir/getinchi.o.provides

src/formats/CMakeFiles/inchiformat.dir/getinchi.o.provides.build: src/formats/CMakeFiles/inchiformat.dir/getinchi.o

src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o: src/formats/CMakeFiles/inchiformat.dir/flags.make
src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/ops/unique.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/inchiformat.dir/__/ops/unique.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/ops/unique.cpp

src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/inchiformat.dir/__/ops/unique.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/ops/unique.cpp > CMakeFiles/inchiformat.dir/__/ops/unique.i

src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/inchiformat.dir/__/ops/unique.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/ops/unique.cpp -o CMakeFiles/inchiformat.dir/__/ops/unique.s

src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.requires:
.PHONY : src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.requires

src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.provides: src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.requires
	$(MAKE) -f src/formats/CMakeFiles/inchiformat.dir/build.make src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.provides.build
.PHONY : src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.provides

src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.provides.build: src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o

# Object files for target inchiformat
inchiformat_OBJECTS = \
"CMakeFiles/inchiformat.dir/inchiformat.o" \
"CMakeFiles/inchiformat.dir/getinchi.o" \
"CMakeFiles/inchiformat.dir/__/ops/unique.o"

# External object files for target inchiformat
inchiformat_EXTERNAL_OBJECTS =

lib/inchiformat.so: src/formats/CMakeFiles/inchiformat.dir/inchiformat.o
lib/inchiformat.so: src/formats/CMakeFiles/inchiformat.dir/getinchi.o
lib/inchiformat.so: src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o
lib/inchiformat.so: src/formats/CMakeFiles/inchiformat.dir/build.make
lib/inchiformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/inchiformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/inchiformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/inchiformat.so: lib/libinchi.so.0.4.1
lib/inchiformat.so: lib/libopenbabel.so.5.0.0
lib/inchiformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/inchiformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/inchiformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/inchiformat.so: src/formats/CMakeFiles/inchiformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/inchiformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/inchiformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/inchiformat.dir/build: lib/inchiformat.so
.PHONY : src/formats/CMakeFiles/inchiformat.dir/build

src/formats/CMakeFiles/inchiformat.dir/requires: src/formats/CMakeFiles/inchiformat.dir/inchiformat.o.requires
src/formats/CMakeFiles/inchiformat.dir/requires: src/formats/CMakeFiles/inchiformat.dir/getinchi.o.requires
src/formats/CMakeFiles/inchiformat.dir/requires: src/formats/CMakeFiles/inchiformat.dir/__/ops/unique.o.requires
.PHONY : src/formats/CMakeFiles/inchiformat.dir/requires

src/formats/CMakeFiles/inchiformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/inchiformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/inchiformat.dir/clean

src/formats/CMakeFiles/inchiformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/inchiformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/inchiformat.dir/depend
