#/usr/bin/python
#generate xml file from jack code
import os
import sys
import glob
import JackTokenizer
if __name__ == "__main__:
	inputname = sys.argv[1]
	head, tail = os.path.split(inputname)
	if '.' in tail: #this is a single file
		name = tail[:tail.find('.')]
		outputname = os.path.join(head, name + '.xml')
		with open(inputname, 'r') as f:
		    program = f.read()
		with open(outputname, 'w') as g:
		    g.write(compilation(program))
	else: #this is a directory
		filelist = glob.glob(inputname + '/*.jack')
		for filename in filelist:
		    with open(filename, 'r') as f:
		        program = f.read()
		    with open(outputname, 'a') as g:
		        g.write(compilation(program))
