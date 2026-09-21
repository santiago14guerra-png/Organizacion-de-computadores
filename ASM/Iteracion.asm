// ============================================================
// Iteracion.asm  (Hack Assembly - nand2tetris)
//
// inicio = 1
// suma = 0
// while (inicio <= 10)
//     suma = suma + inicio
//     inicio = inicio + 1
// fin_while
// ============================================================

@inicio
M=1            // inicio = 1

@suma
M=0            // suma = 0

(ITERACION)
    @inicio
    D=M
    @10
    D=D-A          // D = inicio - 10
    @SALIR_ITERACION
    D;JGT          // if (inicio - 10 > 0) goto SALIR_ITERACION

    @inicio
    D=M
    @suma
    M=D+M           // suma = suma + inicio

    @inicio
    M=M+1            // inicio = inicio + 1

    @ITERACION
    0;JMP

(SALIR_ITERACION)
    @SALIR_ITERACION
    0;JMP          // fin del programa
