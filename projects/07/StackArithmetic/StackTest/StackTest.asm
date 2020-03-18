// push constant 17
 @17
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 17
 @17
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// eq
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=D-M 
M=-1 
 @IF_1
 D;JEQ 
 @0 
 A=M-1 
 M=0 
 (IF_1) 
// push constant 17
 @17
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 16
 @16
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// eq
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=D-M 
M=-1 
 @IF_3
 D;JEQ 
 @0 
 A=M-1 
 M=0 
 (IF_3) 
// push constant 16
 @16
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 17
 @17
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// eq
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=D-M 
M=-1 
 @IF_5
 D;JEQ 
 @0 
 A=M-1 
 M=0 
 (IF_5) 
// push constant 892
 @892
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 891
 @891
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
 @IF_7
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (IF_7) 
// push constant 891
 @891
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 892
 @892
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
 @IF_9
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (IF_9) 
// push constant 891
 @891
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 891
 @891
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
 @IF_11
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (IF_11) 
// push constant 32767
 @32767
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 32766
 @32766
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// gt
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=M-D 
M=-1 
 @IF_13
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (IF_13) 
// push constant 32766
 @32766
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 32767
 @32767
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// gt
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=M-D 
M=-1 
 @IF_15
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (IF_15) 
// push constant 32766
 @32766
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 32766
 @32766
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// gt
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 D=M-D 
M=-1 
 @IF_17
 D;JGT 
 @0 
 A=M-1 
 M=0 
 (IF_17) 
// push constant 57
 @57
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 31
 @31
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// push constant 53
 @53
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
// push constant 112
 @112
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
// neg
 @0 
 A=M-1 
 M=-M 
// and
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M&D 
// push constant 82
 @82
 D=A 
 @0 
 A=M 
 M=D 
 @0 
 M=M+1 
// or
 @0 
 M=M-1 
 A=M 
 D=M 
 A=A-1 
 M=M|D 
// not
 @0 
 A=M-1 
 M=!M 
