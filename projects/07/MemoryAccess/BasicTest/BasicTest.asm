// push constant 10
 @10
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop local 0
 @0
 D=A 
 @1 
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
// push constant 21
 @21
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 22
 @22
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop argument 2
 @2
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
// pop argument 1
 @1
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
// push constant 36
 @36
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop this 6
 @6
 D=A 
 @3 
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
// push constant 42
 @42
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 45
 @45
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop that 5
 @5
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
// push constant 510
 @510
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop temp 6
 @0 
 M=M-1 
 A=M 
 D=M 
 @6
 A=A+1 
 A=A+1 
 A=A+1 
 A=A+1 
 A=A+1 
 M=D 
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
// push that 5
 @5
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
// push this 6
 @6
 D=A 
 @3 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push this 6
 @6
 D=A 
 @3 
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
// sub
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M-D 
// push temp 6
 @5 
 D=A 
 @6
 A=A+D 
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
