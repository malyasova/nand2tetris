#/usr/bin/python

#How to split a jack program into tokens?
#1) Every symbol can only be a symbol token
#2) a keyword surrounded by whitespace and/or symbols is a keyword
#3) quotes surround strings
#4) anything starting with a digit is an integer
#5) everything else is an identifier

keyword = ['class', 'constructor', 'function', 'method', 'field', 'static', 'var', 'int', 'char', 'boolean', 'void', 'true', 'false', 'null', 'this', 'let', 'do', 'if', 'else', 'while', 'return']
symbol = ['{', '}', '(', ')', '[', ']', '.', ',', ';', '+', '-', '*', '/', '&', '|', '<', '>', '=', '_']

def tokenType(token):
    if token in keyword:
        return "keyword"
    elif token in symbol:
        return "symbol"
    elif 


translate_symbol = {">":"&gt;", "<":"&lt;", "&":"&amp;", '"':"&quot;"}

def getNext():
    
