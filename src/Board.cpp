#include "../include/Board.h"

Board::Board()
{
    clear_board();
}

void Board::set_fields(const std::vector<std::vector<int>> &new_board)
{
    if (!is_valid(new_board))
    {
        throw std::invalid_argument("Invalid Sudoku board");
    }

    board_size = new_board.size(); // Get the size of the Sudoku board
    board = new_board;
}

bool Board::is_valid(const std::vector<std::vector<int>> &board) const
{
    int b_size = board.size();

    // Check if the board is square
    if (b_size != BOARD_SIZE)
        return false; // A standard Sudoku board is 9x9

    // Check if the values break the Sudoku rules like same values within one row, column, or subgrid
    if (!has_valid_rows(board))
        return false;

    if (!has_valid_columns(board))
        return false;

    if (!has_valid_subgrids(board))
        return false;

    return true;
}

bool Board::is_valid_row(const std::vector<int> &row) const
{
    std::unordered_set<int> seen; // Initialize an unordered set to keep track of seen numbers

    for (const int num : row)
    {
        if (num == 0)
            continue; // Skip empty cells

        // Check if the number is in the range 1-9
        if (!is_valid_number(num))
            return false; // Invalid number: out of range

        // Check for duplicates in the row
        if (seen.find(num) != seen.end())
            return false; // Duplicate found

        seen.insert(num); // Add the current number to the set of seen values
    }
    return true;
}

bool Board::has_valid_rows(const std::vector<std::vector<int>> &board) const
{
    for (const std::vector<int> &row : board)
    {
        if (!is_valid_row(row))
            return false; // Invalid row found
    }

    return true; // All rows are valid
}

bool Board::is_valid_column(const std::vector<std::vector<int>> &board, int col) const
{
    std::unordered_set<int> seen;

    for (const std::vector<int> &row : board)
    {
        int num = row[col];

        if (num == 0)
            continue;

        if (!is_valid_number(num))
            return false; // Invalid number: out of range

        // Check for duplicates in the column
        if (seen.find(num) != seen.end())
            return false;

        seen.insert(num);
    }

    return true;
}

bool Board::has_valid_columns(const std::vector<std::vector<int>> &board) const
{
    for (int col = 0; col < BOARD_SIZE; col++)
    {
        if (!is_valid_column(board, col))
            return false; // Invalid column found
    }

    return true; // All columns are valid
}

bool Board::is_valid_subgrid(const std::vector<std::vector<int>> &board, int starting_row, int starting_col) const
{
    std::unordered_set<int> seen;

    for (int x = starting_row; x < starting_row + 3; x++)
    {
        for (int y = starting_col; y < starting_col + 3; y++)
        {

            int num = board[x][y];

            if (num == 0)
                continue;

            if (!is_valid_number(num))
                return false;

            // Check for duplicates in the subgrid
            if (seen.find(num) != seen.end())
                return false;

            seen.insert(num);
        }
    }

    return true;
}

bool Board::has_valid_subgrids(const std::vector<std::vector<int>> &board) const
{
    for (int r = 0; r < BOARD_SIZE; r += 3)
    {
        for (int c = 0; c < BOARD_SIZE; c += 3)
        {
            if (!is_valid_subgrid(board, r, c))
                return false; // Invalid subgrid found
        }
    }

    return true; // All subgrids are valid
}

bool Board::is_valid_number(int number) const
{
    return number >= 0 && number <= MAX_NUMB;
}

int Board::get_size() const
{
    return board_size;
}

int Board::get_field(int row, int col) const
{
    return board[row][col];
}

void Board::set_field(int row, int col, int value)
{
    if (!is_valid_number(value))
        return; // Invalid number: out of range

    board[row][col] = value;
}

void Board::clear_board()
{
    // Initialize the board with zeros
    board = std::vector<std::vector<int>>(board_size, std::vector<int>(board_size, 0));
}

void Board::print_board() const
{
    int sqrt_size = std::sqrt(board_size); // Calculate the square root of the board size, typically 3 for a standard 9x9 Sudoku grid

    for (int i = 0; i < board_size; i++)
    {
        // Insert horizontal separators after every 3 rows (for a standard 9x9 Sudoku grid)
        if (i % sqrt_size == 0 && i != 0)
        {
            for (int k = 0; k < board_size * 2 + (sqrt_size - 1) * 2; k++)
            {
                /*
                Print a sequence of '-' characters to create a horizontal separator.
                Each number contains two '-' characters (number + space) and the vertical separation (| + space).
                However, there is one vertical line less than sqrt_size, which calculates to 'sqrt_size - 1'.
                */

                std::cout << "-";
            }
            std::cout << std::endl;
        }

        for (int j = 0; j < board_size; j++)
        {
            // Insert vertical separators (|) after every 3 columns (for a standard 9x9 Sudoku grid)
            if (j % sqrt_size == 0 && j != 0)
            {
                std::cout << "| ";
            }

            // Print the value of the Sudoku board cell
            std::cout << board[i][j] << " ";
        }

        // Start a new line to move to the next row
        std::cout << std::endl;
    }
}
