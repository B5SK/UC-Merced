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
CMAKE_SOURCE_DIR = "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/bigArrays.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/bigArrays.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/bigArrays.dir/flags.make

CMakeFiles/bigArrays.dir/bigArrays.cpp.obj: CMakeFiles/bigArrays.dir/flags.make
CMakeFiles/bigArrays.dir/bigArrays.cpp.obj: ../bigArrays.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/bigArrays.dir/bigArrays.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\bigArrays.dir\bigArrays.cpp.obj -c "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\bigArrays.cpp"

CMakeFiles/bigArrays.dir/bigArrays.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bigArrays.dir/bigArrays.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\bigArrays.cpp" > CMakeFiles\bigArrays.dir\bigArrays.cpp.i

CMakeFiles/bigArrays.dir/bigArrays.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bigArrays.dir/bigArrays.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\bigArrays.cpp" -o CMakeFiles\bigArrays.dir\bigArrays.cpp.s

CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.requires:

.PHONY : CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.requires

CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.provides: CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.requires
	$(MAKE) -f CMakeFiles\bigArrays.dir\build.make CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.provides.build
.PHONY : CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.provides

CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.provides.build: CMakeFiles/bigArrays.dir/bigArrays.cpp.obj


# Object files for target bigArrays
bigArrays_OBJECTS = \
"CMakeFiles/bigArrays.dir/bigArrays.cpp.obj"

# External object files for target bigArrays
bigArrays_EXTERNAL_OBJECTS =

bigArrays.exe: CMakeFiles/bigArrays.dir/bigArrays.cpp.obj
bigArrays.exe: CMakeFiles/bigArrays.dir/build.make
bigArrays.exe: CMakeFiles/bigArrays.dir/linklibs.rsp
bigArrays.exe: CMakeFiles/bigArrays.dir/objects1.rsp
bigArrays.exe: CMakeFiles/bigArrays.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable bigArrays.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\bigArrays.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/bigArrays.dir/build: bigArrays.exe

.PHONY : CMakeFiles/bigArrays.dir/build

CMakeFiles/bigArrays.dir/requires: CMakeFiles/bigArrays.dir/bigArrays.cpp.obj.requires

.PHONY : CMakeFiles/bigArrays.dir/requires

CMakeFiles/bigArrays.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\bigArrays.dir\cmake_clean.cmake
.PHONY : CMakeFiles/bigArrays.dir/clean

CMakeFiles/bigArrays.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug\CMakeFiles\bigArrays.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/bigArrays.dir/depend

