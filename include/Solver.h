#ifndef SOLVER_H
#define SOLVER_H

#include <iostream>
#include <tuple>
#include <vector>
#include <chrono>
#include <thread>
#include <windows.h> // Library effective with Windows

#include "constants.h"
#include "Board.h"

#define ALL_CELLS_FILLED std::make_tuple(-1, -1) // there are no empty cells/ fields left

class Solver
{
private:
    // Use the const keyword, as these methods don't modify the internal state of the Solver
    std::tuple<int, int> find_empty_field(const Board &board) const;
    bool is_valid_number(const Board &board, int row, int col, int number) const;

    void visualize_step(const Board &board) const;

public:
    Solver();

    // Method to solve the Sudoku puzzle. TODO: Handle error cases or unsolvable puzzles.
    bool solve(Board &board, bool visualize);
};

#endif
