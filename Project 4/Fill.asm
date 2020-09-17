// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm
// Implementato da Francesco Bozzano

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

(RESTART)
@SCREEN
D=A
@0
M=D	

(CHECK)

@KBD
D=M
@BLACK
D;JGT	
@WHITE
D;JEQ	

@CHECK
0;JMP

(BLACK)
@1
M=-1	
@FILL
0;JMP

(WHITE)
@1
M=0	
@FILL
0;JMP

(FILL)
@1	
D=M

@0
A=M	
M=D	

@0
D=M+1	
@KBD
D=A-D	

@0
M=M+1	

@FILL
D;JGT
@RESTART
0;JMP
