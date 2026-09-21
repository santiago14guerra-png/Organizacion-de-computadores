// ============================================================
// Condicional.asm  (Hack Assembly - nand2tetris)
//
// a = 15
// b = 30
// if (a > b)
//     resultado = 1
// else if (a < b)
//     resultado = -1
// else
//     resultado = 0
// ============================================================

@15
D=A
@a
M=D

@30
D=A
@b
M=D

@a
D=M
@b
D=D-M          // D = a - b

@MAYOR
D;JGT          // if (a - b > 0) goto MAYOR
@MENOR
D;JLT          // if (a - b < 0) goto MENOR
@IGUAL
0;JMP          // si no, son iguales

(MAYOR)
    @resultado
    M=1
    @FIN
    0;JMP

(MENOR)
    @resultado
    M=-1
    @FIN
    0;JMP

(IGUAL)
    @resultado
    M=0

(FIN)
    @FIN
    0;JMP
