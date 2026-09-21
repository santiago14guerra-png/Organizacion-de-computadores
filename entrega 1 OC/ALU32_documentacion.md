# ALU32 — Estado actual y funcionamiento del código

## Estado actual (Pregunta 1 del parcial)

| Entregable | Estado |
|---|---|
| Diagrama de bloques/lógico | ✅ Done — `ALU32_diagrama.docx` / `ALU32_diagrama.png`, reorganizado por mitad de bits (Low/High) con el bloque de detección de acarreo |
| Implementación `ALU32.hdl` | ✅ Done — las 7 etapas descritas abajo |
| Script de pruebas (`ALU32.tst`/`ALU32.cmp`) | ✅ Done — 144 vectores (18 funciones clásicas × 8 pares X,Y, incluyendo casos que cruzan el acarreo entre mitades) |
| Validación en el Hardware Simulator | ✅ Done — `Comparison ended successfully` |
| Documento de estrategia (PDF, sección Pregunta 1) | 🔶 En proceso |
| Video de sustentación | 🔶 En proceso |

---

## Cómo funciona `ALU32.hdl`, paso a paso

La ALU32 recibe dos números de 32 bits partidos en mitades de 16 bits (`xLow/xHigh`, `yLow/yHigh`), más los 6 bits de control clásicos de la ALU del curso (`zx, nx, zy, ny, f, no`), que se aplican por igual a ambas mitades. Sigue la misma lógica que la `ALU.hdl` de 16 bits, pero corrida dos veces con una pieza extra: el acarreo entre mitades.

### PASO 1 — Procesar entrada X (`zx`, `nx`)

```
Mux16(a=xLow, b=false, sel=zx, out=x1Low);
Not16(in=x1Low, out=notx1Low);
Mux16(a=x1Low, b=notx1Low, sel=nx, out=x2Low, out[15]=x2Low15);
```

- `zx` decide si `X` se reemplaza por cero.
- `nx` decide si el resultado anterior se niega bit a bit.
- Se repite exactamente igual para `xHigh`.
- De paso se guarda `x2Low15` (el bit más alto de la mitad baja de X), que se va a necesitar en el Paso 4 para calcular el acarreo.

### PASO 2 — Procesar entrada Y (`zy`, `ny`)

Mismo mecanismo que el Paso 1, pero sobre `yLow`/`yHigh`. También se guarda `y2Low15`.

### PASO 3 — Operación AND (`f=0`)

```
And16(a=x2Low,  b=y2Low,  out=andLow);
And16(a=x2High, b=y2High, out=andHigh);
```

Se calcula el AND bit a bit de las dos mitades. No hay dependencia entre bits, así que cada mitad es independiente — no hace falta ningún acarreo acá.

### PASO 4 — Operación ADD (`f=1`) con propagación de acarreo

Esta es la parte que no existe en la ALU de 16 bits del curso — es lo nuevo de esta versión.

1. **Suma la mitad baja:** `addLow = x2Low + y2Low`. Si desborda 16 bits, el resultado "da la vuelta" y hay que avisarle a la mitad alta.
2. **Detecta el acarreo** mirando solo los bits más altos de la mitad baja y el resultado de esa suma:
   ```
   carry = (x2Low15 AND y2Low15) OR ((x2Low15 OR y2Low15) AND NOT addLow15)
   ```
   Esta fórmula reconstruye si hubo "me llevo 1" sin necesitar acceso directo al carry interno de `Add16` (que no lo expone como salida).
3. **Suma la mitad alta en dos pasos:** primero `xHigh + yHigh`, y después le suma el acarreo detectado en el paso anterior (metiéndolo como el bit 0 de un segundo operando).

### PASO 5 — Seleccionar función (`f`)

```
Mux16(a=andLow,  b=addLow,  sel=f, out=foutLow);
Mux16(a=andHigh, b=addHigh, sel=f, out=foutHigh);
```

El circuito calculó AND y ADD en paralelo (Pasos 3 y 4); acá se elige cuál de los dos resultados usar, según `f`, para cada mitad.

### PASO 6 — Post-procesamiento (`no`) y generación de salidas

```
Not16(in=foutLow, out=notfoutLow);
Mux16(a=foutLow, b=notfoutLow, sel=no, out=outLow, ...);
```

- `no` decide si el resultado final se niega bit a bit, aplicado por separado a cada mitad.
- La bandera `ng` (¿resultado negativo?) sale gratis: es el bit más alto de `outHigh`, que en un número de 32 bits en complemento a 2 es justamente el bit de signo.

### PASO 7 — Bandera `zr` (cero global de 32 bits)

```
Or8Way(in=outByte0, out=z0);  // ...y lo mismo con outByte1, outByte2, outByte3
Or(a=z01, b=z23, out=nonzero);
Not(in=nonzero, out=zr);
```

Se parte la salida completa en 4 bloques de 8 bits, se pregunta si hay algún 1 en cada bloque, y se combinan esas respuestas. Si ningún bloque tiene un 1, el resultado de 32 bits es cero y `zr=1`.

---

## Ejemplo numérico completo (para verificar el flujo)

`X = 65535 (0x0000FFFF)`, `Y = 1`, controles `zx=nx=zy=ny=no=0, f=1` (sumar sin modificar nada):

| Paso | Resultado |
|---|---|
| 1-2 | `x2Low=0xFFFF`, `x2High=0x0000`, `y2Low=0x0001`, `y2High=0x0000` |
| 4 | `addLow=0x0000`, `carryFromLow=1`, `addHigh=0x0001` |
| 5-6 | `outLow=0x0000`, `outHigh=0x0001`, `ng=0` |
| 7 | `zr=0` |

Resultado final: `outHigh:outLow = 0x00010000 = 65536` ✅ — confirma que el acarreo cruzó correctamente de la mitad baja a la alta.
