 @256 
 D=A 
 @0 
 M=D 
 @$ret.0
 D=A 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @1 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @2 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @3 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @4 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @0 
 D=M 
 @2 
 M=D 
 @5 
 D=A 
 @2 
 M=M-D 
 @0 
 D=A 
 @2 
 M=M-D 
 @0 
 D=M 
 @1 
 M=D 
 @Sys.init 
 0;JMP 
 ($ret.0) 
// function Sys.init 0
 (Sys.init) 
 @0
 D=A 
 @13 
 M=D 
 (Sys$loop.1)
 @Sys$cond.1
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Sys$loop.1
 0;JMP 
 (Sys$cond.1) 
// push constant 4000	
 @4000
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop pointer 0
 @0 
 M=M-1 
 A=M 
 D=M 
 @3 
 M=D 
// push constant 5000
 @5000
 D=A 
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
// call Sys.main 0
 @Sys$ret.2
 D=A 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @1 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @2 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @3 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @4 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @0 
 D=M 
 @2 
 M=D 
 @5 
 D=A 
 @2 
 M=M-D 
 @0 
 D=A 
 @2 
 M=M-D 
 @0 
 D=M 
 @1 
 M=D 
 @Sys.main
 0;JMP 
 (Sys$ret.2) 
// pop temp 1
 @0 
 M=M-1 
 A=M 
 D=M 
 @1
 A=A+1 
 A=A+1 
 A=A+1 
 A=A+1 
 A=A+1 
 M=D 
// label LOOP
 (Sys.LOOP) 
// goto LOOP
 @Sys.LOOP
 0;JMP 
// function Sys.main 5
 (Sys.main) 
 @5
 D=A 
 @13 
 M=D 
 (Sys$loop.3)
 @Sys$cond.3
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Sys$loop.3
 0;JMP 
 (Sys$cond.3) 
// push constant 4001
 @4001
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop pointer 0
 @0 
 M=M-1 
 A=M 
 D=M 
 @3 
 M=D 
// push constant 5001
 @5001
 D=A 
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
// push constant 200
 @200
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop local 1
 @1
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
// push constant 40
 @40
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop local 2
 @2
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
// push constant 6
 @6
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop local 3
 @3
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
// push constant 123
 @123
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// call Sys.add12 1
 @Sys$ret.4
 D=A 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @1 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @2 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @3 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @4 
 D=M 
 @0 
 M=M+1 
 A=M-1 
 M=D 
 @0 
 D=M 
 @2 
 M=D 
 @5 
 D=A 
 @2 
 M=M-D 
 @1 
 D=A 
 @2 
 M=M-D 
 @0 
 D=M 
 @1 
 M=D 
 @Sys.add12
 0;JMP 
 (Sys$ret.4) 
// pop temp 0
 @0 
 M=M-1 
 A=M 
 D=M 
 @0
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
// push local 2
 @2
 D=A 
 @1 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push local 3
 @3
 D=A 
 @1 
 A=M+D 
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push local 4
 @4
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
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
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
 AM=M-1 
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
// function Sys.add12 0
 (Sys.add12) 
 @0
 D=A 
 @13 
 M=D 
 (Sys$loop.5)
 @Sys$cond.5
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Sys$loop.5
 0;JMP 
 (Sys$cond.5) 
// push constant 4002
 @4002
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// pop pointer 0
 @0 
 M=M-1 
 A=M 
 D=M 
 @3 
 M=D 
// push constant 5002
 @5002
 D=A 
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
// push constant 12
 @12
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
 AM=M-1 
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