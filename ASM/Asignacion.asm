// ============================================================
// Asignacion.asm  (Hack Assembly - nand2tetris)
//
// a = 10
// b = 20
// c = b
// d = a
// ============================================================

// a = 10
@10
D=A
@a
M=D

// b = 20
@20
D=A
@b
M=D

// c = b   (memoria -> memoria, pasando por el registro D)
@b
D=M
@c
M=D

// d = a
@a
D=M
@d
M=D

(FIN)
    @FIN
    0;JMP
