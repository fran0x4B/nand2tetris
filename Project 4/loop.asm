// n=R0, i=1 , sum=0
// LOOP if i > n STOP
// sum = sum+i
// i = i+1
// goto loop
// stop : R1 = sum

@R0     
D=M     // D=RAM[0] 
@n      
M=D     // n = RAM[0]
@i
M=1     // i=1
@sum
M=0     // sum = 0

(LOOP)      // Inizio loop
@i
D=M         // d = i
@n
D=D-M       // d = i - n 
@STOP
D;JGT       // if i - n > 0 GOTO STOP
@sum
D=M       // D =  sum
@i
D=D+M       // D = sum + i
@sum
M=D         // sum = sum + i
@i
M=M+1
@LOOP       
0;JMP       // GOTO LOOP

(STOP)      // Inizio STOP
@sum
D=M         // d = sum
@R1
M = D       // RAM[1] = sum  
(END)
@END
0;JMP       // Prevenzione del nop slide
