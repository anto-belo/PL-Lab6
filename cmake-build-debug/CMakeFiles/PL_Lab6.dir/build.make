# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = D:\JetBrains\apps\CLion\ch-0\202.7319.72\bin\cmake\win\bin\cmake.exe

# The command to remove a file.
RM = D:\JetBrains\apps\CLion\ch-0\202.7319.72\bin\cmake\win\bin\cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\User\OneDrive\Documents\PL\PL-Lab6

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\User\OneDrive\Documents\PL\PL-Lab6\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/PL_Lab6.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/PL_Lab6.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/PL_Lab6.dir/flags.make

CMakeFiles/PL_Lab6.dir/main.c.obj: CMakeFiles/PL_Lab6.dir/flags.make
CMakeFiles/PL_Lab6.dir/main.c.obj: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\User\OneDrive\Documents\PL\PL-Lab6\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/PL_Lab6.dir/main.c.obj"
	D:\MinGV\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles\PL_Lab6.dir\main.c.obj   -c D:\User\OneDrive\Documents\PL\PL-Lab6\main.c

CMakeFiles/PL_Lab6.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/PL_Lab6.dir/main.c.i"
	D:\MinGV\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\User\OneDrive\Documents\PL\PL-Lab6\main.c > CMakeFiles\PL_Lab6.dir\main.c.i

CMakeFiles/PL_Lab6.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/PL_Lab6.dir/main.c.s"
	D:\MinGV\mingw64\bin\gcc.exe $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S D:\User\OneDrive\Documents\PL\PL-Lab6\main.c -o CMakeFiles\PL_Lab6.dir\main.c.s

# Object files for target PL_Lab6
PL_Lab6_OBJECTS = \
"CMakeFiles/PL_Lab6.dir/main.c.obj"

# External object files for target PL_Lab6
PL_Lab6_EXTERNAL_OBJECTS =

PL_Lab6.exe: CMakeFiles/PL_Lab6.dir/main.c.obj
PL_Lab6.exe: CMakeFiles/PL_Lab6.dir/build.make
PL_Lab6.exe: CMakeFiles/PL_Lab6.dir/linklibs.rsp
PL_Lab6.exe: CMakeFiles/PL_Lab6.dir/objects1.rsp
PL_Lab6.exe: CMakeFiles/PL_Lab6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\User\OneDrive\Documents\PL\PL-Lab6\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable PL_Lab6.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\PL_Lab6.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/PL_Lab6.dir/build: PL_Lab6.exe

.PHONY : CMakeFiles/PL_Lab6.dir/build

CMakeFiles/PL_Lab6.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\PL_Lab6.dir\cmake_clean.cmake
.PHONY : CMakeFiles/PL_Lab6.dir/clean

CMakeFiles/PL_Lab6.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\User\OneDrive\Documents\PL\PL-Lab6 D:\User\OneDrive\Documents\PL\PL-Lab6 D:\User\OneDrive\Documents\PL\PL-Lab6\cmake-build-debug D:\User\OneDrive\Documents\PL\PL-Lab6\cmake-build-debug D:\User\OneDrive\Documents\PL\PL-Lab6\cmake-build-debug\CMakeFiles\PL_Lab6.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/PL_Lab6.dir/depend

