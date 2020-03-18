// push argument 1
 @1
 D=A 
 @2 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop pointer 1           
 @0 
 M=M-1 
 A=M 
 D=M 
 @4 
 M=D 
// push constant 0
 @0
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop that 0              
 @0
 D=A 
 @4 
 D=D+M 
 @13 
 M=D 
 @0 
 M=M-1 
 A=M 
 D=M 
 @13 
 A=M 
 M=D 
// push constant 1
 @1
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop that 1              
 @1
 D=A 
 @4 
 D=D+M 
 @13 
 M=D 
 @0 
 M=M-1 
 A=M 
 D=M 
 @13 
 A=M 
 M=D 
// push argument 0
 @0
 D=A 
 @2 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 2
 @2
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// sub
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M-D 
// pop argument 0          
 @0
 D=A 
 @2 
 D=D+M 
 @13 
 M=D 
 @0 
 M=M-1 
 A=M 
 D=M 
 @13 
 A=M 
 M=D 
// label MAIN_LOOP_START
 (FibonacciSeries.MAIN_LOOP_START) 
// push argument 0
 @0
 D=A 
 @2 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// if-goto COMPUTE_ELEMENT 
 @0 
 AM=M-1 
 D=M 
 @FibonacciSeries.COMPUTE_ELEMENT
 D;JNE 
// goto END_PROGRAM        
 @FibonacciSeries.END_PROGRAM
 0;JMP 
// label COMPUTE_ELEMENT
 (FibonacciSeries.COMPUTE_ELEMENT) 
// push that 0
 @0
 D=A 
 @4 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push that 1
 @1
 D=A 
 @4 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
// pop that 2              
 @2
 D=A 
 @4 
 D=D+M 
 @13 
 M=D 
 @0 
 M=M-1 
 A=M 
 D=M 
 @13 
 A=M 
 M=D 
// push pointer 1
 @3 
 D=A 
 @1
 A=A+D 
 D=M 
 @0 
 A=M 
 M=D 
@0 
 M=M+1 
// push constant 1
 @1
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
// pop pointer 1           
 @0 
 M=M-1 
 A=M 
 D=M 
 @4 
 M=D 
// push argument 0
 @0
 D=A 
 @2 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 1
 @1
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// sub
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M-D 
// pop argument 0          
 @0
 D=A 
 @2 
 D=D+M 
 @13 
 M=D 
 @0 
 M=M-1 
 A=M 
 D=M 
 @13 
 A=M 
 M=D 
// goto MAIN_LOOP_START
 @FibonacciSeries.MAIN_LOOP_START
 0;JMP 
// label END_PROGRAM
 (FibonacciSeries.END_PROGRAM) 
