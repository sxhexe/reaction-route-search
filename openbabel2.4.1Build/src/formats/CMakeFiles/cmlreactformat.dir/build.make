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
include src/formats/CMakeFiles/cmlreactformat.dir/depend.make

# Include the progress variables for this target.
include src/formats/CMakeFiles/cmlreactformat.dir/progress.make

# Include the compile flags for this target's objects.
include src/formats/CMakeFiles/cmlreactformat.dir/flags.make

src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o: src/formats/CMakeFiles/cmlreactformat.dir/flags.make
src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/cmlreactformat.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/cmlreactformat.cpp

src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/cmlreactformat.cpp > CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.i

src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/cmlreactformat.cpp -o CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.s

src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.requires:
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.requires

src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.provides: src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.requires
	$(MAKE) -f src/formats/CMakeFiles/cmlreactformat.dir/build.make src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.provides.build
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.provides

src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.provides.build: src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o

src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o: src/formats/CMakeFiles/cmlreactformat.dir/flags.make
src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o: /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/xml.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/cmlreactformat.dir/xml/xml.o -c /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/xml.cpp

src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cmlreactformat.dir/xml/xml.i"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/xml.cpp > CMakeFiles/cmlreactformat.dir/xml/xml.i

src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cmlreactformat.dir/xml/xml.s"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats/xml/xml.cpp -o CMakeFiles/cmlreactformat.dir/xml/xml.s

src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.requires:
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.requires

src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.provides: src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.requires
	$(MAKE) -f src/formats/CMakeFiles/cmlreactformat.dir/build.make src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.provides.build
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.provides

src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.provides.build: src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o

# Object files for target cmlreactformat
cmlreactformat_OBJECTS = \
"CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o" \
"CMakeFiles/cmlreactformat.dir/xml/xml.o"

# External object files for target cmlreactformat
cmlreactformat_EXTERNAL_OBJECTS =

lib/cmlreactformat.so: src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o
lib/cmlreactformat.so: src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o
lib/cmlreactformat.so: src/formats/CMakeFiles/cmlreactformat.dir/build.make
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/cmlreactformat.so: lib/libinchi.so.0.4.1
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libxml2.so
lib/cmlreactformat.so: lib/libopenbabel.so.5.0.0
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libcairo.so
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libm.so
lib/cmlreactformat.so: /usr/lib/x86_64-linux-gnu/libz.so
lib/cmlreactformat.so: src/formats/CMakeFiles/cmlreactformat.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX shared module ../../lib/cmlreactformat.so"
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/cmlreactformat.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/formats/CMakeFiles/cmlreactformat.dir/build: lib/cmlreactformat.so
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/build

src/formats/CMakeFiles/cmlreactformat.dir/requires: src/formats/CMakeFiles/cmlreactformat.dir/xml/cmlreactformat.o.requires
src/formats/CMakeFiles/cmlreactformat.dir/requires: src/formats/CMakeFiles/cmlreactformat.dir/xml/xml.o.requires
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/requires

src/formats/CMakeFiles/cmlreactformat.dir/clean:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats && $(CMAKE_COMMAND) -P CMakeFiles/cmlreactformat.dir/cmake_clean.cmake
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/clean

src/formats/CMakeFiles/cmlreactformat.dir/depend:
	cd /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1 /home/reactionroutesearch/reaction-route-search/openbabel-2.4.1/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats /home/reactionroutesearch/reaction-route-search/openbabel2.4.1Build/src/formats/CMakeFiles/cmlreactformat.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/formats/CMakeFiles/cmlreactformat.dir/depend
