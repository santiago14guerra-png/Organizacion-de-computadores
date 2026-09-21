@17                     // A = 17
D=A                     // D = 17
@multiplicando          // A = direccion de multiplicando
M=D                     // multiplicando = 17

@5                      // A = 5
D=A                     // D = 5
@multiplicador          // A = direccion de multiplicador
M=D                     // multiplicador = 5

@producto               // A = direccion de producto
M=0                     // producto = 0            (acumulador, arranca en 0)

@multiplicador          // A = direccion de multiplicador
D=M                     // D = multiplicador
@contador               // A = direccion de contador
M=D                     // contador = multiplicador   (copia: cuenta hacia abajo)

(MULTIPLICACION)        // etiqueta: inicio del bucle
    @contador           // A = direccion de contador
    D=M                 // D = contador
    @FIN_MULT           // A = direccion de la etiqueta FIN_MULT
    D;JLE               // si contador <= 0, ya reste todas las veces: salir

    @multiplicando       // A = direccion de multiplicando
    D=M                  // D = multiplicando
    @producto            // A = direccion de producto
    M=D+M                // producto = producto + multiplicando   (acumula la suma)

    @contador            // A = direccion de contador
    M=M-1                // contador = contador - 1                (resta: acerca el fin del bucle)

    @MULTIPLICACION      // A = direccion de la etiqueta del bucle
    0;JMP                // salto incondicional: vuelve a evaluar la condicion
(FIN_MULT)               // etiqueta: aqui llega cuando contador <= 0 (bucle terminado)

(FIN)                    // etiqueta: fin del programa
    @FIN                 // A = direccion de FIN (a si misma)
    0;JMP                // salto incondicional a FIN -> bucle infinito (detiene el programa)
