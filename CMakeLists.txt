cmake_minimum_required(VERSION 3.5)

project(SudokuSolver)

# Set the C++ standard to C++11 or higher
set(CMAKE_CXX_STANDARD 11)

# Add the source files
file(GLOB SOURCES "src/*.cpp")

# Add an executable for the main program
add_executable(SudokuSolver ${SOURCES} main.cpp)

# Include headers from the 'src' directory
target_include_directories(SudokuSolver PRIVATE src)

# Optionally, if you have tests
# enable_testing()
# add_subdirectory(test)
