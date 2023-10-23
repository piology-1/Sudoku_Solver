cmake_minimum_required(VERSION 3.5)

project(SudokuSolver)

# Set the C++ standard to C++11 or higher
set(CMAKE_CXX_STANDARD 11)

# Find and add all header and source files using GLOB
file(GLOB HEADER_FILES "include/*.h")
file(GLOB SOURCE_FILES "src/*.cpp")

# Add an executable for the main program
add_executable(SudokuSolver ${SOURCE_FILES} main.cpp)

# Include directories for the target
target_include_directories(SudokuSolver PUBLIC include)


# Install the executable to a specified directory
install(TARGETS SudokuSolver DESTINATION bin)