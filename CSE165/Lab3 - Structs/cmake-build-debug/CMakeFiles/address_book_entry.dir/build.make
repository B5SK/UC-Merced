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
CMAKE_SOURCE_DIR = "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/address_book_entry.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/address_book_entry.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/address_book_entry.dir/flags.make

CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj: CMakeFiles/address_book_entry.dir/flags.make
CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj: ../address_book_entry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\address_book_entry.dir\address_book_entry.cpp.obj -c "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\address_book_entry.cpp"

CMakeFiles/address_book_entry.dir/address_book_entry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/address_book_entry.dir/address_book_entry.cpp.i"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\address_book_entry.cpp" > CMakeFiles\address_book_entry.dir\address_book_entry.cpp.i

CMakeFiles/address_book_entry.dir/address_book_entry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/address_book_entry.dir/address_book_entry.cpp.s"
	C:\PROGRA~1\MINGW-~1\X86_64~1.0-P\mingw64\bin\G__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\address_book_entry.cpp" -o CMakeFiles\address_book_entry.dir\address_book_entry.cpp.s

CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.requires:

.PHONY : CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.requires

CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.provides: CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.requires
	$(MAKE) -f CMakeFiles\address_book_entry.dir\build.make CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.provides.build
.PHONY : CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.provides

CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.provides.build: CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj


# Object files for target address_book_entry
address_book_entry_OBJECTS = \
"CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj"

# External object files for target address_book_entry
address_book_entry_EXTERNAL_OBJECTS =

address_book_entry.exe: CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj
address_book_entry.exe: CMakeFiles/address_book_entry.dir/build.make
address_book_entry.exe: CMakeFiles/address_book_entry.dir/linklibs.rsp
address_book_entry.exe: CMakeFiles/address_book_entry.dir/objects1.rsp
address_book_entry.exe: CMakeFiles/address_book_entry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable address_book_entry.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\address_book_entry.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/address_book_entry.dir/build: address_book_entry.exe

.PHONY : CMakeFiles/address_book_entry.dir/build

CMakeFiles/address_book_entry.dir/requires: CMakeFiles/address_book_entry.dir/address_book_entry.cpp.obj.requires

.PHONY : CMakeFiles/address_book_entry.dir/requires

CMakeFiles/address_book_entry.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\address_book_entry.dir\cmake_clean.cmake
.PHONY : CMakeFiles/address_book_entry.dir/clean

CMakeFiles/address_book_entry.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\cmake-build-debug" "C:\Users\B5SK\Documents\UC Merced\Courses\CSE165\Lab3 - Structs\cmake-build-debug\CMakeFiles\address_book_entry.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/address_book_entry.dir/depend

