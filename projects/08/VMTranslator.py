#!/usr/bin/python
import glob
import sys
import os
def process(line, name):
    global label_counter
    if line.find('//') >= 0:
        line = line[:line.find('//')] + '\n'
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
            label = name + '$if.' + str(label_counter)
            label_counter += 1
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n D=D-M \n' #now we need to assign -1(true) to *SP iff D>0; otherwise 0(false)
            x += 'M=-1 \n @' + label + '\n D;JGT \n @0 \n A=M-1 \n M=0 \n (' + label +') \n'
        elif arg == 'eq':
            label = name + '$if.' + str(label_counter)
            label_counter += 1
            x = ' @0 \n M=M-1 \n A=M \n D=M \n A=A-1 \n D=D-M \n' #now we need to assign -1 to *SP iff D==0 
            x += 'M=-1 \n @' + label + '\n D;JEQ \n @0 \n A=M-1 \n M=0 \n (' + label +') \n'
        elif arg == 'gt':
            label = name + '$if.' + str(label_counter)
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
            assert(arg == 'return')
            #endFrame = LCL (stored in @13)
            #retAddr = *(endFrame - 5)  (stored in @14)
            #*ARG = pop()
            #SP = ARG + 1
            #THAT = *(endFrame -1)
            #THIS = *(endFrame - 2)
            #ARG = *(endFrame - 3)
            #LCL = *(endFrame - 4)
            #goto retAddr
            x = ' @1 \n D=M \n @13 \n M=D \n' +\
                ' @5 \n D=A \n @13 \n A=M-D \n D=M \n @14 \n M=D \n'+\
                ' @0 \n AM=M-1 \n D=M \n @2 \n A=M \n M=D \n' +\
                ' @2 \n D=M+1 \n @0 \n M=D \n' +\
                ' @13 \n AM = M-1 \n D=M \n @4 \n M=D \n' +\
                ' @13 \n AM = M-1 \n D=M \n @3 \n M=D \n' +\
                ' @13 \n AM = M-1 \n D=M \n @2 \n M=D \n' +\
                ' @13 \n AM = M-1 \n D=M \n @1 \n M=D \n' +\
                ' @14 \n A=M \n 0;JMP \n'
    elif len(arglist) == 2:
        arg1, arg2 = arglist
        if arg1 == 'goto':
            x = ' @' + name + '.' + arg2 + '\n 0;JMP \n' #jump to label
        elif arg1 == 'if-goto':
            x = ' @0 \n AM=M-1 \n D=M \n @' + name + '.' + arg2 + '\n' +\
                ' D;JNE \n'
        else:
            assert arg1 == 'label', arg1
            x = ' (' + name + '.' + arg2 + ') \n' #label
    else:
        assert len(arglist) == 3, line
        arg1, arg2, arg3 = arglist
        if arg1 == 'call':
            #then arg2 is function_name, and arg3 is nArgs
            #push returnAddress
            #push LCL
            #push ARG
            #push THIS
            #push THAT
            #ARG = SP - 5 - nArgs
            #LCL = SP
            #goto function_name
            #(returnAddress)
            address = name + '.' + arg2 + '$ret.' + str(label_counter)
            label_counter += 1
            x = ' @' + address + '\n D=A \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
                ' @1 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
                ' @2 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
                ' @3 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
                ' @4 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
                ' @0 \n D=M \n @2 \n M=D \n @5 \n D=A \n @2 \n M=M-D \n @' + arg3 + ' \n D=A \n @2 \n M=M-D \n' +\
                ' @0 \n D=M \n @1 \n M=D \n' +\
                ' @' + arg2 + '\n 0;JMP \n' +\
                ' (' + address +') \n'
        elif arg1 == 'function':
            #then arg2 = function_name, arg3 = nVars
            #(function_name)
            #repeat nVar times: push 0
            x = ' (' + arg2 + ') \n' +\
                ' @' + arg3 + '\n D=A \n @13 \n M=D \n' #D = RAM[13] = nVar
            cond = name + '$cond.' + str(label_counter)
            loop = name + '$loop.' + str(label_counter)
            label_counter += 1
            x +=' (' + loop + ')\n @' + cond + '\n D;JLE \n' #while D > 0:
            x +=' @0 \n A=M \n M=0 \n @0 \n M=M+1 \n' #stack.push(0)
            x +=' @13 \n MD = M-1 \n' #RAM[13] -= 1; D=RAM[13];
            x +=' @' + loop + '\n 0;JMP \n (' + cond +') \n'  #end while 
        else:
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
	label_counter = 0 #we are going to use labels in generated assembly code;       label_counter is the number of labels used so far
	#Bootstrap code is needed to start Main.main function in a program made of several source files
	#Bootstrap_code: 
	#SP = 256; Call Sys.init
	address = '$ret.' + str(label_counter)
	label_counter += 1
	#see call function command for assembly explanation
	bootstrap_code = \
	' @256 \n D=A \n @0 \n M=D \n' +\
	' @' + address + '\n D=A \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
	' @1 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
	' @2 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
	' @3 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
	' @4 \n D=M \n @0 \n M=M+1 \n A=M-1 \n M=D \n' +\
	' @0 \n D=M \n @2 \n M=D \n @5 \n D=A \n @2 \n M=M-D \n @0 \n D=A \n @2 \n M=M-D \n' +\
	' @0 \n D=M \n @1 \n M=D \n' +\
	' @Sys.init \n 0;JMP \n' +\
	' (' + address +') \n' 

	if tail.find('.') > 0: #this is a single file
		name = tail[:tail.find('.')]
		outputname = os.path.join(head, name + '.asm')
		with open(inputname, 'r') as f:
		    lines = f.readlines()
		with open(outputname, 'w') as g:
			for line in lines:
				#assert type(process(line)) == str, line
				g.write(process(line, name))    
	
	else: #this is a directory
		filelist = glob.glob(inputname + '/*.vm')
		outputname = os.path.join(inputname, tail + '.asm')
		with open(outputname, 'w') as g:
			g.write(bootstrap_code)
		for filename in filelist:
			filehead, filetail = os.path.split(filename)
			name = filetail[:filetail.find('.')]
			#print name
			with open(filename, 'r') as f:
				lines = f.readlines()
			with open(outputname, 'a') as g:
				for line in lines:
					#assert type(process(line)) == str, line
					g.write(process(line, name))
