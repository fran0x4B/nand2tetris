// RAM[2] = RAM[0] * RAM[1]
// RAM[0] + RAM[0] + ... +  RAM[0] i volte

// i = RAM[1] , n=0
// RAM[2] = 0

//LOOP per i < n RAM[2]
// RAM[2] = RAM[2]+RAM[0]

@R1
D=M
@n
M=D
@i
M=1
@R2
M=0
(LOOP)
@i
D=M         // d = i
@n
D=D-M       // d = i - n 
@END
D;JGT       //if i-n > 0 GOTO END
@R0
D=M
@R2
M=M+D
@i
M=M+1
@LOOP       
0;JMP 
(END)
0;JMP  


