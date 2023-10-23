#include "../include/Game.h"

Game::Game()
{
    // Initialize the game if necessary
}

void Game::start_solving(const bool visualize)
{
    if (game_solver.solve(game_board, visualize))
    {
        std::cout << "The Sudoku puzzle has been solved:\n"
                  << std::endl;
        game_board.print_board();
    }
    else
        std::cout << "The Sudoku board could not be solved..." << std::endl;

    std::cout << std::endl;
}

void Game::input_new_board()
{
    std::vector<std::vector<int>> input_board(BOARD_SIZE, std::vector<int>(BOARD_SIZE, 0));

    // Prompt the user to enter a new Sudoku board row by row.
    std::cout << "\n === Enter a new Sudoku board row by row. Use 0 for empty cells and separate each value with a space. === \n"
              << std::endl;

    // Loop through each row of the Sudoku board
    for (int row = 0; row < BOARD_SIZE; row++)
    {
        // Display the current row, e.g., "Row 1:", "Row 2:", etc.
        std::cout << "Row " << row + 1 << ":\t";

        // Loop through each column in the current row
        for (int col = 0; col < BOARD_SIZE; col++)
        {
            // Read a single value from the user and store it in the input_board 2D vector.
            std::cin >> input_board[row][col];

            if (!game_board.is_valid_number(input_board[row][col]))
            {
                std::cerr << "\nInvalid value :'" << input_board[row][col] << "' entered. Values should be between 0 and " << BOARD_SIZE << "." << std::endl;
                return; // Exit the input process
            }
        }
    }

    if (!game_board.is_valid(input_board))
    {
        std::cerr << "\nInvalid Sudoku board. Please check the rules and try again." << std::endl;
        std::cerr << "No board has been set up!" << std::endl;
        return; // Exit the input process
    }

    std::cout << "\nThe entered Sudoku board looks like this:\n"
              << std::endl;
    game_board.set_fields(input_board);
    game_board.print_board();
}

void Game::run()
{
    system(CLEAR); // Clear the terminal
    bool is_running = true;

    while (is_running)
    {
        int choice;

        std::cout << " ### Sudoku Solver - Main Menu ### " << std::endl;
        std::cout << "1. Display the current Sudoku board" << std::endl;
        std::cout << "2. Enter a new Sudoku puzzle" << std::endl;
        std::cout << "3. Solve the current Sudoku puzzle" << std::endl;
        std::cout << "4. Visualise the current puzzle's solving process" << std::endl;
        std::cout << "5. Set an example board" << std::endl;
        std::cout << "6. Clear board with zeros" << std::endl;
        std::cout << "0. Quit" << std::endl;

        std::cout << "Your choice: ";
        std::cin >> choice;
        system(CLEAR);

        switch (choice)
        {
        case 1:
            // Implement displaying the Sudoku board here
            std::cout << "The current Sudoku board looks like this:\n"
                      << std::endl;

            game_board.print_board();
            std::cout << std::endl;

            break;

        case 2:
            // Implement puzzle input here
            input_new_board();
            std::cout << std::endl;

            break;

        case 3:
            // Implement puzzle solving here
            start_solving(false);

            break;

        case 4:
            // Implement visualization of the solving process here
            start_solving(true);

            break;

        case 5:
            bsp_board = {
                {3, 0, 6, 5, 0, 8, 4, 0, 0},
                {5, 2, 0, 0, 0, 0, 0, 0, 0},
                {0, 8, 7, 0, 0, 0, 0, 3, 1},
                {0, 0, 3, 0, 1, 0, 0, 8, 0},
                {9, 0, 0, 8, 6, 3, 0, 0, 5},
                {0, 5, 0, 0, 9, 0, 6, 0, 0},
                {1, 3, 0, 0, 0, 0, 2, 5, 0},
                {0, 0, 0, 0, 0, 0, 0, 7, 4},
                {0, 0, 5, 2, 0, 6, 3, 0, 0}};

            std::cout << "The sample Sudoku board looks like this:\n"
                      << std::endl;
            game_board.set_fields(bsp_board);
            game_board.print_board();

            std::cout << std::endl;

            break;

        case 6:
            game_board.clear_board();

            std::cout << "Sudoku board reseted and filled with 0's." << std::endl;
            std::cout << std::endl;

            break;

        case 0:
            is_running = false; // Quit the game

            std::cout << "\nThank you for using the Sudoku Solver - Bye!" << std::endl;
            std::cout << std::endl;

            break;

        default:
            std::cout << "Invalid choice. Please choose again." << std::endl;
        }
    }
}
