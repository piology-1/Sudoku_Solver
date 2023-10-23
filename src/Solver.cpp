#include "../include/Solver.h"

Solver::Solver()
{
}

bool Solver::solve(Board &board, bool visualize)
{
    // Solve the sudoku using the backtrace algorithm.
    std::tuple<int, int> empty_pos = find_empty_field(board);

    if (empty_pos == ALL_CELLS_FILLED)
        return true; // The Sudoku is solved

    int row = std::get<0>(empty_pos);
    int col = std::get<1>(empty_pos);

    // check each field with each possible value (1-9)
    for (int numb = 1; numb < POSSIBLE_NUMBERS; numb++)
    {
        if (is_valid_number(board, row, col, numb))
        {
            board.set_field(row, col, numb);
            if (visualize)
                visualize_step(board);

            if (solve(board, visualize))
            {
                // recursive call to fill the board
                return true;
            }
        }
        // number wasn't valid, reset the field to 0 (empty)
        board.set_field(row, col, 0);
    }

    return false;
}

std::tuple<int, int> Solver::find_empty_field(const Board &board) const
{
    int b_size = board.get_size();

    for (int x = 0; x < b_size; x++)
    {
        for (int y = 0; y < b_size; y++)
        {
            if (board.get_field(x, y) == 0)
                return std::make_tuple(x, y); // found the position of the found empty field
        }
    }

    // no empty fields left
    return ALL_CELLS_FILLED;
}

bool Solver::is_valid_number(const Board &board, int row, int col, int number) const
{
    int b_size = board.get_size();

    // check if passed number is already in the row
    for (int _col = 0; _col < b_size; _col++)
    {
        if (board.get_field(row, _col) == number) // && col != _col
            return false;
    }

    // check if passed number is already in the column
    for (int _row = 0; _row < b_size; _row++)
    {
        if (board.get_field(_row, col) == number) // && row != _row
            return false;
    }

    // check if passed number is already in the 3x3 matrix (also known as a 3x3 subgrid or block)

    // Determine the starting row and column of the corresponding 3x3 subgrid using integer division.
    int matrix_start_row = (row / 3) * 3;
    int matrix_start_col = (col / 3) * 3;

    // Iterate through the cells in the subgrid
    for (int r = matrix_start_row; r < matrix_start_row + 3; r++)
    {
        for (int c = matrix_start_col; c < matrix_start_col + 3; c++)
        {
            if (board.get_field(r, c) == number)
                return false; // Number is already present in the subgrid and therefore not valid
        }
    }

    // passed number is valid regarding the soduku rules
    return true;
}

void Solver::visualize_step(const Board &board) const
{
    std::cout << "Start solving with the backtrace algorithm...\n"
              << std::endl;
    board.print_board();
    std::this_thread::sleep_for(std::chrono::milliseconds(50));
    system(CLEAR);
}