#ifndef Game_H
#define Game_H

#include <iostream>
#include <vector>
#include <cstdlib> // For clear screen

#include "constants.h"
#include "Board.h"
#include "Solver.h"

class Game
{
private:
    // Use const if not modifying the internal state
    Board game_board;
    Solver game_solver;

    std::vector<std::vector<int>> bsp_board; // 2D vector to represent the Sudoku board

    void start_solving(const bool visualize);
    void input_new_board();

public:
    Game(); // Default constructor

    void run();
};

#endif

/*
3 0 6 5 0 8 4 0 0
5 2 0 0 0 0 0 0 0
0 8 7 0 0 0 0 3 1
0 0 3 0 1 0 0 8 0
9 0 0 8 6 3 0 0 5
0 5 0 0 9 0 6 0 0
1 3 0 0 0 0 2 5 0
0 0 0 0 0 0 0 7 4
0 0 5 2 0 6 3 0 0

Correct output:
3 1 6 5 7 8 4 9 2
5 2 9 1 3 4 7 6 8
4 8 7 6 2 9 5 3 1
2 6 3 4 1 5 9 8 7
9 7 4 8 6 3 1 2 5
8 5 1 7 9 2 6 4 3
1 3 8 9 4 7 2 5 6
6 9 2 3 5 1 8 7 4
7 4 5 2 8 6 3 1 9
*/