// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

//for i = 1 to R1: sum = sum + R0

@i
M = 1   //i = 1
@product
M = 0   //product = 0

(LOOP)
//if i > R1, go to STOP
@i 
D = M
@R1
D = D - M
@STOP
D; JGT

// product = product + R0; i = i+1
@R0
D = M
@product
M = M + D
@i 
M = M+1

@LOOP //jump to (LOOP) 
0;JMP

(STOP)
//write the result into R2
@product
D = M
@2
M = D

(END)
@END //infinite loop to end the program
0;JMP
