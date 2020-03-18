// function SimpleFunction.test 2
 (SimpleFunction.test) 
 @2
 D=A 
 @13 
 M=D 
 (SimpleFunction$loop.1)
 @SimpleFunction$cond.1
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @SimpleFunction$loop.1
 0;JMP 
 (SimpleFunction$cond.1) 
// push local 0
 @0
 D=A 
 @1 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push local 1
 @1
 D=A 
 @1 
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
// not
 @0 
 A=M-1 
 M=!M 
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
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
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
// sub
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M-D 
// return
 @1 
 D=M 
 @13 
 M=D 
 @5 
 D=A 
 @13 
 A=M-D 
 D=M 
 @14 
 M=D 
 @0 
 M=M-1 
 A=M 
 D=M 
 @2 
 A=M 
 M=D 
 @2 
 D=M+1 
 @0 
 M=D 
 @13 
 AM = M-1 
 D=M 
 @4 
 M=D 
 @13 
 AM = M-1 
 D=M 
 @3 
 M=D 
 @13 
 AM = M-1 
 D=M 
 @2 
 M=D 
 @13 
 AM = M-1 
 D=M 
 @1 
 M=D 
 @14 
 A=M 
