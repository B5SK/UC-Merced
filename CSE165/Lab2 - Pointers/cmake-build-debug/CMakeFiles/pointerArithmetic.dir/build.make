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
include CMakeFiles/pointerArithmetic.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/pointerArithmetic.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/pointerArithmetic.dir/flags.make

CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj: CMakeFiles/pointerArithmetic.dir/flags.make
CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj: ../pointerArithmetic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\pointerArithmetic.dir\pointerArithmetic.cpp.obj -c "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\pointerArithmetic.cpp"

CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\pointerArithmetic.cpp" > CMakeFiles\pointerArithmetic.dir\pointerArithmetic.cpp.i

CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\pointerArithmetic.cpp" -o CMakeFiles\pointerArithmetic.dir\pointerArithmetic.cpp.s

CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.requires:

.PHONY : CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.requires

CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.provides: CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.requires
	$(MAKE) -f CMakeFiles\pointerArithmetic.dir\build.make CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.provides.build
.PHONY : CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.provides

CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.provides.build: CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj


# Object files for target pointerArithmetic
pointerArithmetic_OBJECTS = \
"CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj"

# External object files for target pointerArithmetic
pointerArithmetic_EXTERNAL_OBJECTS =

pointerArithmetic.exe: CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj
pointerArithmetic.exe: CMakeFiles/pointerArithmetic.dir/build.make
pointerArithmetic.exe: CMakeFiles/pointerArithmetic.dir/linklibs.rsp
pointerArithmetic.exe: CMakeFiles/pointerArithmetic.dir/objects1.rsp
pointerArithmetic.exe: CMakeFiles/pointerArithmetic.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable pointerArithmetic.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pointerArithmetic.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/pointerArithmetic.dir/build: pointerArithmetic.exe

.PHONY : CMakeFiles/pointerArithmetic.dir/build

CMakeFiles/pointerArithmetic.dir/requires: CMakeFiles/pointerArithmetic.dir/pointerArithmetic.cpp.obj.requires

.PHONY : CMakeFiles/pointerArithmetic.dir/requires

CMakeFiles/pointerArithmetic.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\pointerArithmetic.dir\cmake_clean.cmake
.PHONY : CMakeFiles/pointerArithmetic.dir/clean

CMakeFiles/pointerArithmetic.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab2 - Pointers\cmake-build-debug\CMakeFiles\pointerArithmetic.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/pointerArithmetic.dir/depend

