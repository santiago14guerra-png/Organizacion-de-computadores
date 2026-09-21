// Sqrt.asm - Santiago Guerra Vasquez
// Calcula floor(sqrt(N)) restando impares consecutivos (1+3+5+...+(2r-1)=r^2).
//
// Como correrlo en el CPU Emulator:
//   1. File > Load Program... y elige este archivo
//   2. Pon el valor de N en RAM[0] y el PC en 0
//   3. Dale Run (o Step varias veces hasta que quede fijo en FIN)
//   4. Lee el resultado en RAM[1]
//
// Variables en RAM: resto=RAM[16], impar=RAM[17], raiz=RAM[18]

@R0
D=M
@resto
M=D             // resto = N (copia de trabajo; R0 no se toca)

@1
D=A
@impar
M=D             // impar = 1 (primer numero impar a restar)

@raiz
M=0             // raiz = 0 (cuenta las restas exitosas)

// Mientras resto >= impar: resta el impar actual y avanza al siguiente (+2)
(RAIZ)
    @resto
    D=M
    @impar
    D=D-M
    @FIN_RAIZ
    D;JLT       // resto - impar < 0 -> ya no alcanza, salir

    @resto
    M=D

    @impar
    M=M+1
    M=M+1       // impar += 2

    @raiz
    M=M+1

    @RAIZ
    0;JMP
(FIN_RAIZ)

@raiz
D=M
@R1
M=D             // R1 = raiz = floor(sqrt(N))

(FIN)
    @FIN
    0;JMP       // bucle infinito, aqui termina el programa
