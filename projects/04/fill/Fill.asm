// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

//// Replace this comment with your code.

(CURRENTINPUT)
@KBD        
D = M   
@INPUT
D;JNE  
@NOINPUT
D;JEQ

//Pone la pantalla en negro
(INPUT)
@1
M = M + 1   
D = M    
@16383
A = D + A   
M = -1 
@8192
D = A
@1
D = D - M
@INPUT
D;JNE

@1
M = 0
@CURRENTINPUT
D;JEQ

//Pone la pantalla en blanco
(NOINPUT)
@1
M = M + 1  
D = M       
@16383
A = D + A   
M = 0
@8192
D = D - A
@NOINPUT
D;JLT

@1
M = 0
@CURRENTINPUT
D;JEQ
