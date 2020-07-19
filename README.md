# TicTacToe w/ AI

This game is a simple command line version of the classic Tic Tac Toe. It is suitable for up to two players, but you can also select 0 and watch the computer play itself. I began with creating a game that two humans could play against each other - setting up the board and displaying it, CLI prompts, and handling user input as well as evaluating when the game had been won. The real challenge, however, was to create the logic for the computer to play a human user, and also for the computer to play itself. What was the hierarchy of best moves? Was there a mathematical concept to build on to make the computer invincible? I quickly went down a rabbit hole in tryin to over architect the AI piece. All in all it was a fun project, and really made me break down automatic assumptions in human thinking into bite sized bits of logic.

## Installation
To install this game onto your local machine:

- clone the repository from [GitHub](https://github.com/labrynth-of-cernunnos/tic-tac-toe-ai)
- cd into the directory on your local machine
- run `bundle install` from the command line to install dependencies

## Usage
Instructions for playing Tic Tac Toe:

- The game is played on a grid that's 3 squares by 3 squares.
- start program with `ruby bin/tictactoe.rb`
- The computer will ask you a simple set of questions to get the game set up
- Once the game begins the rules are as follows:
- You are X, your friend (or the computer in this case) is O. Players take turns putting their marks in empty squares.
- these squares are numbered from 1-9,:read from left to right  1 top-left - 3 on top-right, 3 in the middle-left, and so on
- Simply enter in the number of the square you wish to put your mark on
- The computer will make it's move, or player two will be prompted
- The first player to get 3 of their marks in a row (up, down, across, or diagonally) is the winner
- When all 9 squares are full, the game is over. If no player has 3 marks in a row, the game ends in a tie

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/labrynth-of-cernunnos/tic-tac-toe-ai)

## License

The game is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
