# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.28

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

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build

# Include any dependencies generated for this target.
include CMakeFiles/SudokuSolver.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SudokuSolver.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SudokuSolver.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SudokuSolver.dir/flags.make

CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj: CMakeFiles/SudokuSolver.dir/includes_CXX.rsp
CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj: C:/Users/piusg/OneDrive/Programming/C_C++_projects/Sudoku_Solver_logic/src/Board.cpp
CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj: CMakeFiles/SudokuSolver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj -MF CMakeFiles\SudokuSolver.dir\src\Board.cpp.obj.d -o CMakeFiles\SudokuSolver.dir\src\Board.cpp.obj -c C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Board.cpp

CMakeFiles/SudokuSolver.dir/src/Board.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/src/Board.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Board.cpp > CMakeFiles\SudokuSolver.dir\src\Board.cpp.i

CMakeFiles/SudokuSolver.dir/src/Board.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/src/Board.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Board.cpp -o CMakeFiles\SudokuSolver.dir\src\Board.cpp.s

CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj: CMakeFiles/SudokuSolver.dir/includes_CXX.rsp
CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj: C:/Users/piusg/OneDrive/Programming/C_C++_projects/Sudoku_Solver_logic/src/Game.cpp
CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj: CMakeFiles/SudokuSolver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj -MF CMakeFiles\SudokuSolver.dir\src\Game.cpp.obj.d -o CMakeFiles\SudokuSolver.dir\src\Game.cpp.obj -c C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Game.cpp

CMakeFiles/SudokuSolver.dir/src/Game.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/src/Game.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Game.cpp > CMakeFiles\SudokuSolver.dir\src\Game.cpp.i

CMakeFiles/SudokuSolver.dir/src/Game.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/src/Game.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Game.cpp -o CMakeFiles\SudokuSolver.dir\src\Game.cpp.s

CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj: CMakeFiles/SudokuSolver.dir/includes_CXX.rsp
CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj: C:/Users/piusg/OneDrive/Programming/C_C++_projects/Sudoku_Solver_logic/src/Solver.cpp
CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj: CMakeFiles/SudokuSolver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj -MF CMakeFiles\SudokuSolver.dir\src\Solver.cpp.obj.d -o CMakeFiles\SudokuSolver.dir\src\Solver.cpp.obj -c C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Solver.cpp

CMakeFiles/SudokuSolver.dir/src/Solver.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/src/Solver.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Solver.cpp > CMakeFiles\SudokuSolver.dir\src\Solver.cpp.i

CMakeFiles/SudokuSolver.dir/src/Solver.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/src/Solver.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\src\Solver.cpp -o CMakeFiles\SudokuSolver.dir\src\Solver.cpp.s

CMakeFiles/SudokuSolver.dir/main.cpp.obj: CMakeFiles/SudokuSolver.dir/flags.make
CMakeFiles/SudokuSolver.dir/main.cpp.obj: CMakeFiles/SudokuSolver.dir/includes_CXX.rsp
CMakeFiles/SudokuSolver.dir/main.cpp.obj: C:/Users/piusg/OneDrive/Programming/C_C++_projects/Sudoku_Solver_logic/main.cpp
CMakeFiles/SudokuSolver.dir/main.cpp.obj: CMakeFiles/SudokuSolver.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SudokuSolver.dir/main.cpp.obj"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SudokuSolver.dir/main.cpp.obj -MF CMakeFiles\SudokuSolver.dir\main.cpp.obj.d -o CMakeFiles\SudokuSolver.dir\main.cpp.obj -c C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\main.cpp

CMakeFiles/SudokuSolver.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SudokuSolver.dir/main.cpp.i"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\main.cpp > CMakeFiles\SudokuSolver.dir\main.cpp.i

CMakeFiles/SudokuSolver.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SudokuSolver.dir/main.cpp.s"
	C:\msys64\ucrt64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\main.cpp -o CMakeFiles\SudokuSolver.dir\main.cpp.s

# Object files for target SudokuSolver
SudokuSolver_OBJECTS = \
"CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj" \
"CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj" \
"CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj" \
"CMakeFiles/SudokuSolver.dir/main.cpp.obj"

# External object files for target SudokuSolver
SudokuSolver_EXTERNAL_OBJECTS =

SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/src/Board.cpp.obj
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/src/Game.cpp.obj
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/src/Solver.cpp.obj
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/main.cpp.obj
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/build.make
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/linkLibs.rsp
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/objects1.rsp
SudokuSolver.exe: CMakeFiles/SudokuSolver.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable SudokuSolver.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SudokuSolver.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SudokuSolver.dir/build: SudokuSolver.exe
.PHONY : CMakeFiles/SudokuSolver.dir/build

CMakeFiles/SudokuSolver.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SudokuSolver.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SudokuSolver.dir/clean

CMakeFiles/SudokuSolver.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build C:\Users\piusg\OneDrive\Programming\C_C++_projects\Sudoku_Solver_logic\build\CMakeFiles\SudokuSolver.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/SudokuSolver.dir/depend
