// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

//n = 8192 = size of the screen
@8192
D = A
@n
M = D

//startscreen = 16384 = start of the screen
@16384
D = A
@startscreen
M = D

//keyboard = 24576 - address of the keyboard chip

//endscreen = startscreen + n
@endscreen
M = D
@n
D = M
@endscreen
M = M + D

(LOOP)
//check the keyboard 
@24576
D = M
//if D not 0, write -1 to the screen; else (D = 0) write 0 to the screen
@ELSE
D; JEQ

@screenvalue //value we'll write to the screen
M = -1
@ENDIF 
0;JMP

(ELSE)
@screenvalue
M = 0

(ENDIF)
//now we fill the screen with screenvalue
//at the start, pointer points at the start
@startscreen
D = M
@pointer
M = D

(INNERLOOP)
//if pointer==endscreen go to start of the outer LOOP
@pointer
D = M
@endscreen
D = D - M
@LOOP
D;JEQ

@screenvalue 
D = M
@pointer
A = M
M = D

//pointer++
@pointer
M = M+1

@INNERLOOP
0;JMP

(END) //we should not ever reach this line but I added just in case
@END
0;JMP



