# ALU3 — ALU de 3 entradas (Pregunta 2 del parcial)

## Estado actual (Pregunta 2 del parcial)

| Entregable | Estado |
|---|---|
| Conjunto de operaciones y bits de control | ✅ Done — tabla más abajo |
| Diagrama de bloques/lógico | ⬜ Pendiente — no hay un archivo de diagrama para ALU3 todavía (solo el esquema ASCII de esta página) |
| Implementación `ALU3.hdl` | ✅ Done |
| Script de pruebas (`ALU3.tst`/`ALU3.cmp`) | ✅ Done — 42 vectores, ver sección Validación |
| Validación en el Hardware Simulator | ✅ Done — `Comparison ended successfully` |
| Análisis de arquitectura (practicidad) | ✅ Done — sección más abajo |
| Documento de estrategia (PDF, sección Pregunta 2) | 🔶 En proceso |
| Video de sustentación | 🔶 En proceso |

## Idea de diseño

En lugar de diseñar una ALU de 3 entradas "desde cero" con una red de compuertas completamente nueva, `ALU3` **reutiliza dos veces la ALU clásica de 16 bits** (`ALU.hdl`) encadenada en serie:

```
X, Y ──► [ALU #1] ──► w ──► [ALU #2] ──► out, zr, ng
              ▲                  ▲
   zx,nx,zy,ny,f,no      zz,nz,fz,noz, Z
```

- **Etapa 1** combina `X` e `Y` exactamente igual que la ALU del curso, con los 6 bits de control ya conocidos (`zx, nx, zy, ny, f, no`). Produce un resultado intermedio `w`.
- **Etapa 2** combina `w` con `Z` usando el mismo patrón de preprocesamiento/función/postprocesamiento, pero con 4 bits de control nuevos (`zz, nz, fz, noz`). `w` entra como el operando "x" de esta segunda ALU, sin bits de cero/negación propios (`zx=nx=false`), porque ya viene completamente procesado por la etapa 1.

Es una decisión de diseño deliberada: en vez de inventar compuertas nuevas para tres operandos, se compone la pieza que ya existe y ya está probada. Esto es el punto central del análisis de practicidad más abajo.

## `ALU3.hdl`

```hdl
CHIP ALU3 {
    IN  x[16], y[16], z[16],
        zx, nx, zy, ny, f, no,
        zz, nz, fz, noz;
    OUT out[16], zr, ng;

    PARTS:
    ALU(x=x, y=y, zx=zx, nx=nx, zy=zy, ny=ny, f=f, no=no, out=w);
    ALU(x=w, y=z, zx=false, nx=false, zy=zz, ny=nz, f=fz, no=noz, out=out, zr=zr, ng=ng);
}
```

Son **10 bits de control** en total (6 + 4) y **2 instancias** del chip `ALU` ya existente — nada de compuertas nuevas.

## Conjunto de operaciones (bits de control)

Combinando los 6 bits de la etapa 1 (idénticos a la tabla de la ALU clásica) con los 4 de la etapa 2, se obtienen operaciones de 3 entradas. Tabla representativa (no exhaustiva — hay 2¹⁰ = 1024 combinaciones posibles):

| Operación | zx nx zy ny f no | zz nz fz noz |
|---|---|---|
| `x + y + z` | 0 0 0 0 1 0 | 0 0 1 0 |
| `(x & y) + z` | 0 0 0 0 0 0 | 0 0 1 0 |
| `(x + y) & z` | 0 0 0 0 1 0 | 0 0 0 0 |
| `x + y - z` | 0 0 0 0 1 0 | 0 1 1 0 |
| `x - y + z` | 0 1 0 0 1 1 | 0 0 1 0 |
| `x + y` (z ignorado) | 0 0 0 0 1 0 | 1 0 1 0 |
| `x + y + 1` | 0 0 0 0 1 0 | 1 1 1 1 |
| `-(x + y + z)` | 0 0 0 0 1 0 | 0 0 1 1 |
| `(x + y) - 1` | 0 0 0 0 1 0 | 1 1 1 0 |

**Nota de diseño:** como `w` entra a la etapa 2 sin bits de cero/negación propios, no todas las 18 funciones clásicas de la ALU de 2 entradas están disponibles *sobre w* en la etapa 2 (por ejemplo no se puede pedir directamente `!w` de forma aislada salvo componiéndolo dentro de la etapa 1). Es la limitación explícita que se paga a cambio de usar solo 10 bits de control en vez de 12 (que se necesitarían si `w` también tuviera `zx`/`nx` propios en la segunda etapa).

## Validación

`ALU3.tst` / `ALU3.cmp` (en esta misma carpeta): 42 casos de prueba, corridos con `tools/HardwareSimulator.sh`, resultado: **`Comparison ended successfully`**. Cada valor esperado se calculó primero de forma independiente en Python (replicando la semántica de la ALU de 16 bits en cascada) y luego se confirmó bit a bit contra la salida real del simulador. Incluye:
- 6 funciones representativas de la etapa 1 (`x+y`, `x-y`, `x&y`, `-x`, `x+1`, `0`) combinadas con 6 funciones de la etapa 2 (`w+z`, `w-z`, `w&z`, `z` anulado, `-(w+z)`, `z` ignorado).
- 7 combinaciones de `x,y,z`, incluyendo casos borde: `x=y=z=0`, los tres en `0xFFFF` (`-1,-1,-1`), overflow con signo al encadenar dos sumas (`32767+1+1`), y el valor más negativo de 16 bits (`0x8000`) sumado a operandos pequeños.

## Análisis de arquitectura: ¿es practico en la vida real?

**1. Impacto en el set de instrucciones (ISA).**
Una ALU de 2 entradas necesita 6 bits de control, que caben cómodos en el opcode de una instrucción de 16 bits (como en el `Hack`). Esta ALU3 necesita **10 bits de control más 3 direcciones de registro fuente** (X, Y, Z) en vez de 2. Eso ya no cabe en una instrucción de 16 bits sin sacrificar espacio para direccionar memoria/registros — obligaría a instrucciones más largas (32 bits) o a partir la operación en micro-operaciones (ej. una palabra de control + una palabra de operandos), lo que complica el decodificador de instrucciones.

**2. Consumo de energía.**
El camino de datos duplica la ALU de 16 bits: son **2 ALUs completas en serie**, es decir, aproximadamente el doble de compuertas conmutando por cada operación (~2× el consumo dinámico de una ALU de 2 entradas), incluso en los casos donde `Z` no se necesita (`zz=1`) — la segunda ALU igual consume energía procesando `w+0`, porque el hardware no sabe "saltarse" la etapa si no hace falta.

**3. Complejidad de la unidad de control y del camino crítico.**
No solo hay que decodificar 10 señales de control en vez de 6 (más lógica de decodificación), sino que el **camino crítico crece**: la salida `w` de la etapa 1 es la entrada de la etapa 2, así que la señal tiene que atravesar *dos* sumadores completos en cascada antes de estabilizarse. Esto alarga el tiempo de propagación total de la ALU y, en un diseño síncrono, obliga a bajar la frecuencia de reloj o a partir la operación en dos ciclos (con un registro intermedio guardando `w`), lo que a su vez necesita más lógica de control (pipeline/estado).

**4. Veredicto de practicidad.**
Como instrucción de propósito general de un solo ciclo, **no es practica**: el costo en bits de control, área, energía y camino crítico no se justifica frente a simplemente ejecutar dos instrucciones ALU de 2 entradas seguidas (`w = x op y` y luego `out = w op z`), que es exactamente lo que esta ALU3 hace en hardware pero fusionado. Donde **sí tendría sentido** es como **instrucción fusionada especializada** (al estilo de un *fused multiply-add*) en una unidad vectorial/DSP, donde el patrón "combinar tres operandos" aparece con tanta frecuencia (ej. acumuladores, filtros FIR) que amortizar el costo extra de área/energía en una unidad dedicada — fuera del pipeline entero de propósito general — sí compensa.
