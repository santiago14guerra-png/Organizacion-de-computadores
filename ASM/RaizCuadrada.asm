@17                     // A = 17
D=A                     // D = 17
@radicando              // A = direccion de radicando
M=D                     // radicando = 17

@radicando              // A = direccion de radicando
D=M                     // D = radicando
@resto                  // A = direccion de resto
M=D                     // resto = radicando       (arranca igual al radicando)

@1                      // A = 1
D=A                     // D = 1
@impar                  // A = direccion de impar
M=D                     // impar = 1               (primer numero impar a restar)

@raiz                   // A = direccion de raiz
M=0                     // raiz = 0                (contador de restas exitosas)

(RAIZ)                  // etiqueta: inicio del bucle
    @resto              // A = direccion de resto
    D=M                 // D = resto
    @impar              // A = direccion de impar
    D=D-M               // D = resto - impar
    @FIN_RAIZ           // A = direccion de la etiqueta FIN_RAIZ
    D;JLT               // si (resto - impar < 0), ya no alcanza: salir

    @resto               // A = direccion de resto
    M=D                  // resto = resto - impar   (resta el impar actual)

    @impar                // A = direccion de impar
    M=M+1                 // impar = impar + 1  )
    M=M+1                 // impar = impar + 1  ) juntas: impar = impar + 2 (siguiente impar)

    @raiz                 // A = direccion de raiz
    M=M+1                 // raiz = raiz + 1          (cuenta esta resta)

    @RAIZ                 // A = direccion de la etiqueta del bucle
    0;JMP                 // salto incondicional: vuelve a evaluar la condicion
(FIN_RAIZ)               // etiqueta: aqui llega cuando resto < impar (bucle terminado)

(FIN)                    // etiqueta: fin del programa
    @FIN                 // A = direccion de FIN (a si misma)
    0;JMP                // salto incondicional a FIN -> bucle infinito (detiene el programa)
