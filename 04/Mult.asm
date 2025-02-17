// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

//// Replace this comment with your code.

// R2 = R0 * R1
// Add R0 to R2, do it R1 times

// set i, n, sum
// @i=16 
@i
M=1
@R1
D=M
// @n=17
@n
M=D
// initialize R2
@R2
M=0

(LOOP)
// if i > n, stop
@i
D=M
@n
// i - n 
D=D-M
@STOP
D;JGT

// M     = D     + M
// R[R2] = R[R0] + R[R2]
@R0
D=M
@R2
M=D+M

@i
M=M+1
@LOOP
0;JMP

(STOP)
@STOP
0;JMP