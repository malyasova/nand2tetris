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
// function Class2.set 0
 (Class2.set) 
 @0
 D=A 
 @13 
 M=D 
 (Class2$loop.1)
 @Class2$cond.1
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Class2$loop.1
 0;JMP 
 (Class2$cond.1) 
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
// pop static 0
 @0 
 M=M-1 
 A=M 
 D=M 
 @Class2.0
 M=D 
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
// pop static 1
 @0 
 M=M-1 
 A=M 
 D=M 
 @Class2.1
 M=D 
// push constant 0
 @0
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
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
 0;JMP 
// function Class2.get 0
 (Class2.get) 
 @0
 D=A 
 @13 
 M=D 
 (Class2$loop.2)
 @Class2$cond.2
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Class2$loop.2
 0;JMP 
 (Class2$cond.2) 
// push static 0
 @Class2.0
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push static 1
 @Class2.1
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
 0;JMP 
// function Class1.set 0
 (Class1.set) 
 @0
 D=A 
 @13 
 M=D 
 (Class1$loop.3)
 @Class1$cond.3
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Class1$loop.3
 0;JMP 
 (Class1$cond.3) 
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
// pop static 0
 @0 
 M=M-1 
 A=M 
 D=M 
 @Class1.0
 M=D 
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
// pop static 1
 @0 
 M=M-1 
 A=M 
 D=M 
 @Class1.1
 M=D 
// push constant 0
 @0
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
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
 0;JMP 
// function Class1.get 0
 (Class1.get) 
 @0
 D=A 
 @13 
 M=D 
 (Class1$loop.4)
 @Class1$cond.4
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Class1$loop.4
 0;JMP 
 (Class1$cond.4) 
// push static 0
 @Class1.0
 D=M 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push static 1
 @Class1.1
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
 0;JMP 
// function Sys.init 0
 (Sys.init) 
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
// push constant 6
 @6
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 8
 @8
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// call Class1.set 2
 @Sys.Class1.set$ret.6
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
 @2 
 D=A 
 @2 
 M=M-D 
 @0 
 D=M 
 @1 
 M=D 
 @Class1.set
 0;JMP 
 (Sys.Class1.set$ret.6) 
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
// push constant 23
 @23
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 15
 @15
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// call Class2.set 2
 @Sys.Class2.set$ret.7
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
 @2 
 D=A 
 @2 
 M=M-D 
 @0 
 D=M 
 @1 
 M=D 
 @Class2.set
 0;JMP 
 (Sys.Class2.set$ret.7) 
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
// call Class1.get 0
 @Sys.Class1.get$ret.8
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
 @Class1.get
 0;JMP 
 (Sys.Class1.get$ret.8) 
// call Class2.get 0
 @Sys.Class2.get$ret.9
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
 @Class2.get
 0;JMP 
 (Sys.Class2.get$ret.9) 
// label WHILE
 (Sys.WHILE) 
// goto WHILE
 @Sys.WHILE
 0;JMP 
