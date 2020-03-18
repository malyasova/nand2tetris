This is repository contains solutions for Coursera's Nand To Tetris course, 
https://www.nand2tetris.org/

The course is dedicated to building a computer from logic gates, to machine code, assembler and a java-like programming language jack.
See the linked website to understand what is going on.

projects/06 contains a compiler from machine language to assembler code
projects/07 contains a compiler from assembler code to jack language

projects/09/MyGame contains a game written in jack language.
You are on a 10x10 board, where balls of three colors (white, black and grey) randomly appear each turn.
You can put 5 or more balls of the same color in a row (vertical, horizontal or diagonal) to destroy them.
You can pick up balls and walk around with them, but you cannot walk though a ball when you hold a ball.
Once there is no place left on the board, you lose.

To run the game,

1. Run tools/VMEmulator.sh
2. File : Load : projects/09/MyGame
3. Set Animate : No animation (so that it runs quickly)
4. Enjoy the game.
 

