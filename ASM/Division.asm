@17                     // A = 17
D=A                     // D = 17
@dividendo              // A = direccion de dividendo
M=D                     // dividendo = 17

@5                      // A = 5
D=A                     // D = 5
@divisor                // A = direccion de divisor
M=D                     // divisor = 5

@dividendo              // A = direccion de dividendo
D=M                     // D = dividendo
@resto                  // A = direccion de resto
M=D                     // resto = dividendo          (arranca igual al dividendo)

@cociente               // A = direccion de cociente
M=0                     // cociente = 0               (contador de restas exitosas)

(DIVISION)              // etiqueta: inicio del bucle
    @resto              // A = direccion de resto
    D=M                 // D = resto
    @divisor            // A = direccion de divisor
    D=D-M               // D = resto - divisor
    @FIN_DIV            // A = direccion de la etiqueta FIN_DIV
    D;JLT               // si (resto - divisor < 0), o sea resto < divisor, saltar a FIN_DIV

    @resto              // A = direccion de resto
    M=D                 // resto = resto - divisor    (resta una vez mas)

    @cociente           // A = direccion de cociente
    M=M+1               // cociente = cociente + 1     (cuenta esa resta)

    @DIVISION           // A = direccion de la etiqueta del bucle
    0;JMP               // salto incondicional: vuelve a evaluar la condicion
(FIN_DIV)               // etiqueta: aqui llega cuando resto < divisor (bucle terminado)

(FIN)                   // etiqueta: fin del programa
    @FIN                // A = direccion de FIN (a si misma)
    0;JMP               // salto incondicional a FIN -> bucle infinito (detiene el programa)
