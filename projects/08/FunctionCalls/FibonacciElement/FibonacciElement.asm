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
// function Main.fibonacci 0
 (Main.fibonacci) 
 @0
 D=A 
 @13 
 M=D 
 (Main$loop.1)
 @Main$cond.1
 D;JLE 
 @0 
 A=M 
 M=0 
 @0 
 M=M+1 
 @13 
 MD = M-1 
 @Main$loop.1
 0;JMP 
 (Main$cond.1) 
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
// lt                     
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=D-M 
M=-1 
 @Main$if.2
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (Main$if.2) 
// if-goto IF_TRUE
 @0 
 AM=M-1 
 D=M 
 @Main.IF_TRUE
 D;JNE 
// goto IF_FALSE
 @Main.IF_FALSE
 0;JMP 
// label IF_TRUE          
 (Main.IF_TRUE) 
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
// label IF_FALSE         
 (Main.IF_FALSE) 
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
// call Main.fibonacci 1  
 @Main.Main.fibonacci$ret.3
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
 @Main.fibonacci
 0;JMP 
 (Main.Main.fibonacci$ret.3) 
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
// call Main.fibonacci 1  
 @Main.Main.fibonacci$ret.4
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
 @Main.fibonacci
 0;JMP 
 (Main.Main.fibonacci$ret.4) 
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
// push constant 4
 @4
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// call Main.fibonacci 1   
 @Sys.Main.fibonacci$ret.6
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
 @Main.fibonacci
 0;JMP 
 (Sys.Main.fibonacci$ret.6) 
// label WHILE
 (Sys.WHILE) 
// goto WHILE              
 @Sys.WHILE
 0;JMP 
