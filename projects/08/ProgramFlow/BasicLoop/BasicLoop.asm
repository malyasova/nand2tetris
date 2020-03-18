// push constant 0    
 @0
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
// label LOOP_START
 (BasicLoop.LOOP_START) 
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
// add
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M+D 
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
// if-goto LOOP_START  
 @0 
 AM=M-1 
 D=M 
 @BasicLoop.LOOP_START
 D;JNE 
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
