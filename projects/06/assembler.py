#!/usr/bin/python
#assembler program to turn asm instructions into machine code
import os
import re

jump_dict = {'null':'000', 'JGT':'001', 'JEQ':'010',\
             'JGE':'011', 'JLT':'100', 'JNE':'101',\
            'JLE':'110', 'JMP':'111'}
dest_dict = {'null':'000', 'M':'001', 'D':'010', 'MD':'011',\
             'A':'100', 'AM':'101', 'AD': '110', 'AMD':'111'}
comp_dict = {'0':'0101010', '1':'0111111', '-1':'0111010',\
            'D':'0001100', 'A':'0110000', '!D':'0001101', \
             '!A':'0110001', '-D':'0001111', '-A':'0110011',\
            'D+1':'0011111', 'A+1':'0110111', 'D-1':'0001110',\
            'A-1':'0110010', 'D+A':'0000010','D-A':'0010011',\
            'A-D':'0000111', 'D&A':'0000000','D|A':'0010101',\
            'M':'1110000', '!M':'1110001', '-M':'1110011',\
            'M+1':'1110111', 'M-1':'1110010', 'D+M':'1000010',\
            'D-M':'1010011', 'M-D':'1000111', 'D&M':'1000000',\
            'D|M':'1010101','null':'1110000'}
predefined_dict = {'SCREEN':'16384', 'KBD':'24576', 'SP':'0',\
                  'LCL':'1', 'ARG':'2', 'THIS':'3', 'THAT':'4',\
                   'R0':'0','R1':'1','R2':'2','R3':'3','R4':'4',\
                  'R5':'5','R6':'6','R7':'7','R8':'8','R9':'9',\
                  'R10':'10', 'R11':'11', 'R12':'12', 'R13':'13',\
                  'R14':'14', 'R15':'15'}

integer = re.compile('^[0-9]+$')

def preprocess(lines):
"""removes whitespace, processes labels and variables"""
    instr_number = 0
    instructions = []
    label_dict = {}
    for line in lines:
        if line.find('//') >= 0:
            line = line[:line.find('//')] #remove comments
        line = line.replace(" ", "") #remove all whitespace
        line = line.replace("\n", "")
        line = line.replace('\r', "")
        if len(line) == 0:
            continue
        if line.find('(') >= 0:
            if line.find(')') < 0:
                print 'ERROR', line
                continue
            label_dict[line[line.find('(')+1:line.find(')')]] = str(instr_number)
        else:
            instr_number += 1
            instructions.append(line)
    return instructions, label_dict
    
def process(line):
"""translates instructions into machine code"""
    if line[0] == '@':
        value  = line[1:]
        if value in predefined_dict.keys():
            value = predefined_dict[value]
        if value in label_dict.keys():
            value = label_dict[value]
        if value in variable_dict.keys():
            value = variable_dict[value]
        if not integer.match(value) > 0:
            variable_dict[value] = str(len(variable_dict) + 16)
            value = variable_dict[value]
        binary = bin(int(value))[2:]
        if (len(binary) > 15):
            binary = binary[-15:]
        return '0'*(16 - len(binary)) + binary + '\n'
                    
    else:
        dest = 'null'
        jump = 'null'
        comp = 'null'
        if line.find('=') >= 0:
            (dest, comp) = line.split('=')
            if comp.find(';') > 0:
                comp, jump = comp.split(';')
        else:
            if line.find(';') >= 0:
                comp, jump = line.split(';')
            else:
                jump = line
    return '111' + comp_dict[comp] + dest_dict[dest] + jump_dict[jump] + '\n'

if __name__ == "__main__":
	for inputname in ['max/Max.asm', 'add/Add.asm', 'rect/Rect.asm', 'pong/Pong.asm']:
		inputfile = open(inputname, "r")
		f = inputfile.readlines()
		outputname = inputname[inputname.find('/')+1:inputname.find('.')] + '.hack'
		outputfile = open(os.path.join('project6/', outputname), "w")
		#first stage is remove whitespace, deal with labels and variables
		variable_dict = dict()
		instructions, label_dict = preprocess(f)
		#second stage is translate instructions into machine code
		for instruction in instructions:
		    outputfile.write(process(instruction))
		
		inputfile.close()
		outputfile.close()
