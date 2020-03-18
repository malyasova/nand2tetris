#!/usr/bin/python
#translates jack language into assemply language
import sys
import os

def process(line):
    global label_counter
    if line.find('//') >= 0:
        line = line[:line.find('//')]
    arglist = line.split()
    if len(arglist) == 0:
        return ''
    elif len(arglist) == 1:
        arg = arglist[0]
        if arg == 'add':
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n M=M+D \n'
        elif arg == 'sub':
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n M=M-D \n'
        elif arg == 'neg':
            x = ' @0 \n A=M-1 \n M=-M \n'
        elif arg == 'lt':
            label = 'IF_' + str(label_counter)
            label_counter += 1
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n D=D-M \n' #now we need to assign -1(true) to *SP iff D>0; otherwise 0(false)
            x += 'M=-1 \n @' + label + '\n D;JGT \n @0 \n A=M-1 \n M=0 \n (' + label +') \n'
        elif arg == 'eq':
            label = 'IF_' + str(label_counter)
            label_counter += 1
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n D=D-M \n' #now we need to assign -1 to *SP iff D==0 
            x += 'M=-1 \n @' + label + '\n D;JEQ \n @0 \n A=M-1 \n M=0 \n (' + label +') \n'
        elif arg == 'gt':
            label = 'IF_' + str(label_counter)
            label_counter += 1
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n D=M-D \n' #now we need to assign -1 to *SP iff D>0 
            x += 'M=-1 \n @' + label + '\n D;JGT \n @0 \n A=M-1 \n M=0 \n (' + label +') \n'
        elif arg == 'and':
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n M=M&D \n'
        elif arg == 'or':
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n M=M|D \n'
        elif arg == 'not':
            x = ' @0 \n A=M-1 \n M=!M \n'
    else:
        assert len(arglist) == 3, line
        arg1, arg2, arg3 = arglist
        if arg2 == 'constant':
            assert arg1 == 'push', "Error: cannot write into a constant"
            x = ' @' + arg3 + '\n D=A \n @0 \n A=M \n M=D \n' +\
            ' @0 \n M=M+1 \n' 
            #*SP = arg3
            #SP++
            
        #static is a memory segment from 16 to 255
        elif arg2 == 'static':
            if arg1 == 'pop':
                x = ' @0 \n M=M-1 \n' + \
                    ' A=M \n D=M \n' + \
                    ' @' + name + '.' + arg3 + '\n M=D \n'
                #SP--
                #D = stack.pop()
                #Foo.5 = D
            else:
                assert arg1 == 'push'
                x = ' @' + name + '.' + arg3 + '\n D=M \n'+\
                    ' @0 \n A=M \n M=D \n'+\
                    ' @0 \n M=M+1 \n' 
                    #D = Foo.5
                    #*SP = D
                    #SP++
    #temp is a constant memory segment from 5 to 12
        elif arg2 == 'temp': 
            if arg1 == 'pop':
                x = ' @0 \n M=M-1 \n' + \
                ' A=M \n D=M \n' +\
                ' @' + arg3 + '\n A=A+1 \n A=A+1 \n A=A+1 \n A=A+1 \n A=A+1 \n' + \
                ' M=D \n'
            #*addr = D
            #SP--
            #D = stack.pop()
            #addr = 5 + arg3
            else:
                assert arg1 == 'push'
                x = ' @5 \n D=A \n @' + arg3 + '\n A=A+D \n' + \
                    ' D=M \n @0 \n A=M \n M=D \n'+ \
                    ' @0 \n M=M+1 \n' 
                #addr = 5 + arg3
                #*SP = *addr
                #SP++
        elif arg2 == 'pointer':
            assert arg3 in ['0','1']
            if arg1 == 'pop':
                if arg3 == '1':
                    x = ' @0 \n M=M-1 \n' +\
                    ' A=M \n D=M \n' +\
                    ' @4 \n M=D \n' 
                else:
                    x = ' @0 \n M=M-1 \n' +\
                    ' A=M \n D=M \n' +\
                    ' @3 \n M=D \n' 
            #SP--
            #D = stack.pop()
            #addr = 3 + arg3
            #*addr = D
            else:
                assert arg1 == 'push'
                x = ' @3 \n D=A \n @' + arg3 + '\n A=A+D \n' + \
                    ' D=M \n @0 \n A=M \n M=D \n' + '@0 \n M=M+1 \n' 
                #addr = 3 + arg3
                #*SP = *addr
                #SP++
        else:
            memmap = {'local':'1', 'argument':'2', 'this':'3', 'that':'4'}
            assert(arg2 in memmap.keys())
            ram_adr = memmap[arg2]
            if arg1 == 'pop':
                 x = ' @' + arg3 + '\n D=A \n @' + ram_adr + ' \n D=D+M \n @13 \n M=D \n' +\
                ' @0 \n M=M-1 \n' +\
                ' A=M \n D=M \n' +\
                ' @13 \n A=M \n M=D \n'
            #RAM[13] = *LCL + arg3
            #SP-- 
            #D = stack.pop()
             # *RAM[13] = D
            else:
                assert(arg1 == 'push')
                x = ' @' + arg3 + '\n D=A \n @' + ram_adr + ' \n A=M+D \n' +\
                    ' D=M \n @0 \n A=M \n M=D \n'+\
                    ' @0 \n M=M+1 \n' 
                #addr = *LCL + arg3
                #*SP = *addr
                #SP++
        
    return '// ' + line + x
    
if __name__ == "__main__":
	inputname = sys.argv[1]
	head, tail = os.path.split(inputname)
	name = tail[:tail.find('.')]
	outputname = os.path.join(head, name + '.asm')
	label_counter = 0 #we are going to use labels in generated assembly code; label_counter is the number of labels used so far
	with open(inputname, 'r') as f:
		lines = f.readlines()
	with open(outputname, 'w') as g:
		for line in lines:
			res = process(line)
		    assert type(res) == str, line
		    g.write(res)
