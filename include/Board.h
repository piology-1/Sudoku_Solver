#ifndef Board_H
#define Board_H

#include <iostream>
#include <vector>
#include <cmath> // Include the <cmath> header for the sqrt function
#include <unordered_set>

#include "constants.h"

class Board
// class representing the Board
{
private:
    std::vector<std::vector<int>> board; // 2D vector to represent the Sudoku board
    int board_size = BOARD_SIZE;         // size of the board

    bool is_valid_row(const std::vector<int> &row) const;
    bool is_valid_column(const std::vector<std::vector<int>> &board, int col) const;
    bool is_valid_subgrid(const std::vector<std::vector<int>> &board, int starting_row, int starting_col) const;

public:
    // Default constructor to create an empty board.
    Board();

    bool is_valid(const std::vector<std::vector<int>> &board) const;
    bool has_valid_rows(const std::vector<std::vector<int>> &board) const;
    bool has_valid_columns(const std::vector<std::vector<int>> &board) const;
    bool has_valid_subgrids(const std::vector<std::vector<int>> &board) const;
    bool is_valid_number(int number) const;

    // Read-only methods, marked as const to indicate they do not modify the object's state.
    int get_size() const;
    int get_field(int row, int col) const;

    // Methods that modify the object's state, so not marked as const.
    void set_fields(const std::vector<std::vector<int>> &new_board);
    void set_field(int row, int col, int value);
    void clear_board();

    // Print the board; 'const' indicates no state modification.
    void print_board() const;
};

#endif
