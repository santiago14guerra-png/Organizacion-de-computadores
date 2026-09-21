@17                     // A = 17
D=A                     // D = 17
@radicando              // A = direccion de radicando
M=D                     // radicando = 17

@i                      // A = direccion de i
M=0                     // i = 0            (candidato que vamos probando)
@raiz                   // A = direccion de raiz
M=0                     // raiz = 0         (ultimo candidato que no se paso)

(PROBAR)                // etiqueta: bucle externo, prueba el siguiente candidato
    @i                  // A = direccion de i
    M=M+1               // i = i + 1        (probamos el siguiente numero)

    // ---- cuadrado = i * i, mediante suma repetida (bucle interno) ----
    @cuadrado           // A = direccion de cuadrado
    M=0                 // cuadrado = 0     (acumulador de esta multiplicacion)
    @i                  // A = direccion de i
    D=M                 // D = i
    @j                  // A = direccion de j
    M=D                 // j = i            (contador de la suma, cuenta hacia abajo)

    (CUADRADO)          // etiqueta: bucle interno, calcula i*i
        @j               // A = direccion de j
        D=M              // D = j
        @FIN_CUADRADO    // A = direccion de la etiqueta FIN_CUADRADO
        D;JLE            // si j <= 0, ya sume i veces: termine

        @i               // A = direccion de i
        D=M              // D = i
        @cuadrado        // A = direccion de cuadrado
        M=D+M            // cuadrado = cuadrado + i

        @j               // A = direccion de j
        M=M-1            // j = j - 1

        @CUADRADO        // A = direccion de la etiqueta del bucle interno
        0;JMP            // vuelve a evaluar la condicion del bucle interno
    (FIN_CUADRADO)       // etiqueta: aqui llega cuando j <= 0 (cuadrado = i*i listo)

    // ---- comparo el cuadrado contra el radicando ----
    @cuadrado            // A = direccion de cuadrado
    D=M                  // D = cuadrado
    @radicando           // A = direccion de radicando
    D=D-M                // D = cuadrado - radicando
    @FIN                 // A = direccion de la etiqueta FIN
    D;JGT                // si cuadrado > radicando, me pase: salir (raiz se queda con el ultimo valor bueno)

    @i                    // A = direccion de i
    D=M                   // D = i
    @raiz                 // A = direccion de raiz
    M=D                   // raiz = i        (este candidato todavia es valido)

    @PROBAR               // A = direccion de la etiqueta del bucle externo
    0;JMP                 // vuelve a probar con el siguiente candidato

(FIN)                    // etiqueta: fin del programa
    @FIN                 // A = direccion de FIN (a si misma)
    0;JMP                // salto incondicional a FIN -> bucle infinito (detiene el programa)
