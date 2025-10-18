// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.
// Inicializar n con valor en RAM[0]
@0
D = M
@n
M = D

@1
D = M
@aux
M = 0
@2
M = 0

(LOOP)
    @n
    D = M
    @END
    D;JLE

    @aux 
    D = M
    @1
    D = D + M
    @aux
    M = D
    
    @2
    M = D

    // n = n - 1
    @1
    D = A
    @n
    M = M - D

    @n
    D = M
    @END
    D;JLE

    // repetir
    @LOOP
    0;JMP

(END)
    0;JMP

