# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2017.3.3\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2017.3.3\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/WordOccurences.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/WordOccurences.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/WordOccurences.dir/flags.make

CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj: CMakeFiles/WordOccurences.dir/flags.make
CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj: ../WordOccurences.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\WordOccurences.dir\WordOccurences.cpp.obj -c "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\WordOccurences.cpp"

CMakeFiles/WordOccurences.dir/WordOccurences.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/WordOccurences.dir/WordOccurences.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\WordOccurences.cpp" > CMakeFiles\WordOccurences.dir\WordOccurences.cpp.i

CMakeFiles/WordOccurences.dir/WordOccurences.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/WordOccurences.dir/WordOccurences.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\WordOccurences.cpp" -o CMakeFiles\WordOccurences.dir\WordOccurences.cpp.s

CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.requires:

.PHONY : CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.requires

CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.provides: CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.requires
	$(MAKE) -f CMakeFiles\WordOccurences.dir\build.make CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.provides.build
.PHONY : CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.provides

CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.provides.build: CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj


# Object files for target WordOccurences
WordOccurences_OBJECTS = \
"CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj"

# External object files for target WordOccurences
WordOccurences_EXTERNAL_OBJECTS =

WordOccurences.exe: CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj
WordOccurences.exe: CMakeFiles/WordOccurences.dir/build.make
WordOccurences.exe: CMakeFiles/WordOccurences.dir/linklibs.rsp
WordOccurences.exe: CMakeFiles/WordOccurences.dir/objects1.rsp
WordOccurences.exe: CMakeFiles/WordOccurences.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable WordOccurences.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\WordOccurences.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/WordOccurences.dir/build: WordOccurences.exe

.PHONY : CMakeFiles/WordOccurences.dir/build

CMakeFiles/WordOccurences.dir/requires: CMakeFiles/WordOccurences.dir/WordOccurences.cpp.obj.requires

.PHONY : CMakeFiles/WordOccurences.dir/requires

CMakeFiles/WordOccurences.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\WordOccurences.dir\cmake_clean.cmake
.PHONY : CMakeFiles/WordOccurences.dir/clean

CMakeFiles/WordOccurences.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab1 - Introduction\cmake-build-debug\CMakeFiles\WordOccurences.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/WordOccurences.dir/depend

