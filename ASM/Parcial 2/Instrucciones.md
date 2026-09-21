# Segundo Examen Parcial: Arquitectura y Organización de Computadores

**Plataforma:** Arquitectura Hack (Nand2Tetris)
**Lenguaje:** Ensamblador Hack (.asm)
**Modalidad:** Trabajo en equipo (entrega individual obligatoria de evidencias)
**Duración:** 3 horas académicas en dos sesiones presenciales
- Sesión 1: Martes 15 de septiembre (1.5 horas)
- Sesión 2: Jueves 17 de septiembre (1.5 horas)

**Fecha y hora límite de entrega:** Jueves 17 de septiembre a las 12:00 m. (medio día) en el buzón virtual habilitado.

## Instrucciones Generales

- **Modalidad de trabajo:** El segundo parcial se desarrolla en equipo. Cada equipo consolidará el análisis, diseño y la solución algorítmica conjunta.
- **Entrega individual de evidencias obligatoria:** Aunque la solución se construye en equipo, cada miembro del equipo debe adjuntar y subir de manera individual al buzón virtual el paquete completo de evidencias del equipo (archivos .asm, comentarios con la identificación de todos los integrantes y la documentación de soporte). La omisión de la entrega individual por parte de un estudiante anula su calificación respectiva.
- **Asistencia obligatoria:** La asistencia y permanencia presencial en el aula durante ambas sesiones de clase (martes 15 y jueves 17 de septiembre) es estrictamente necesaria e indispensable para la presentación y validación del segundo examen parcial.
- **Fecha y hora límite:** El buzón cerrará puntualmente el jueves 17 de septiembre a las 12:00 m. No se recibirán entregas extemporáneas sin la correspondiente justificación formal.
- Implemente las soluciones utilizando exclusivamente las instrucciones del repertorio de la máquina Hack (instrucciones @, tipo A, tipo C y etiquetas simbólicas (LABEL)).
- Cada archivo debe ser probado y validado con éxito utilizando el simulador oficial de CPU de la suite Nand2Tetris (CPUEmulator).
- El uso y gestión de la memoria deben ajustarse rigurosamente a las direcciones y registros solicitados en la formulación de cada problema.
- El código debe incluir comentarios detallados que expliquen el flujo de control, los nombres e iniciales de todos los integrantes del equipo, la reserva de registros de memoria y la lógica de cada subrutina.

## Punto 1: Cálculo de la Raíz Cuadrada Entera (50%)

**Enfoque recomendado:** Sesión 1 – Martes 15 de septiembre

### Contexto del Problema

En arquitecturas de cómputo con repertorio reducido como la ALU de Hack, no existen instrucciones nativas de multiplicación, división ni radicación. La raíz cuadrada entera de un número N ≥ 0 se define como el mayor entero r tal que:

r² ≤ N < (r + 1)²

Un método clásico y eficiente sin requerir multiplicadores por hardware aprovecha la propiedad de la suma de números impares consecutivos:

1 + 3 + 5 + ... + (2r - 1) = r²

Al restar progresivamente números impares (1, 3, 5, 7, ...) del valor N mientras el residuo sea mayor o igual a cero, la cantidad total de sustracciones completadas con éxito equivale con exactitud a la parte entera de la raíz cuadrada (⌊√N⌋).

### Requisitos Técnicos

- **Entrada:** Un número entero no negativo almacenado en el registro de memoria RAM[0] (o R0).
- **Salida:** El resultado de la raíz cuadrada entera ⌊√N⌋ debe guardarse en el registro de memoria RAM[1] (o R1).
- **Preservación de datos:** El valor original cargado en RAM[0] no debe ser destruido ni alterado al finalizar la rutina.
- **Casos de borde:** El algoritmo debe manejar de forma nativa los valores 0 y 1, devolviendo 0 y 1 respectivamente.
- **Nombre del archivo:** `Sqrt.asm`

## Punto 2: Control de Entrada/Salida e Interfaz Gráfica de Matriz (50%)

**Enfoque recomendado:** Sesión 2 – Jueves 17 de septiembre

### Contexto del Problema

La arquitectura de hardware Hack interactúa con sus periféricos a través de mapeo en memoria (Memory-Mapped I/O):

- **Teclado (KBD):** Mapeado en el registro de memoria RAM[24576]. Contiene el valor ASCII de la tecla presionada o 0 si no hay tecla activa.
- **Pantalla (SCREEN):** Mapeada a partir del registro RAM[16384] con una resolución gráfica de 512 × 256 píxeles. En la arquitectura Hack, la memoria se organiza en registros de 16 bits (1 registro de memoria = 16 bits / píxeles contiguos). Cada fila horizontal de la pantalla se compone exactamente de 32 registros contiguos de 16 bits (32 × 16 = 512 píxeles).

### Especificaciones del Reto Gráfico

Construya un programa en bucle infinito que realice polling continuo sobre el teclado y despliegue en pantalla un glifo bitmap de 32 × 32 píxeles:

**Identificación del equipo de trabajo:**
- Utilice las iniciales de los integrantes del equipo.
- En caso de colisión (dos integrantes inician con la misma letra), se debe alternar a la inicial del primer apellido para garantizar la unicidad de las teclas (ejemplo: Carlos y Camilo → iniciales C y M).

**Mapeo de interacción:**
- Al presionar la tecla de la primera inicial (ej. 'C', ASCII 67), se dibuja el glifo de 32 × 32 correspondiente a la primera letra.
- Al presionar la tecla de la segunda inicial o apellido (ej. 'M', ASCII 77), la pantalla actualiza la zona para mostrar el glifo de la segunda letra.
- Al presionar la barra espaciadora (Space, ASCII 32), la matriz de 32 × 32 píxeles debe limpiarse por completo (escribiendo ceros en los registros correspondientes).

**Estructura en memoria del bloque de 32 × 32 píxeles:**
- Cada registro de memoria almacena 16 bits horizontales; una fila gráfica de 32 píxeles requiere exactamente 2 registros consecutivos de 16 bits en la memoria de pantalla.
- Para avanzar a la siguiente fila del glifo (inmediatamente abajo), se debe incrementar la dirección base en 32 registros de memoria (el ancho total de una fila completa del framebuffer).
- El glifo abarca un total de 32 filas horizontales, lo que corresponde a modificar exactamente 64 registros de 16 bits en total (2 registros por fila × 32 filas).

**Nombre del archivo:** `GlyphMatrix.asm`

## Rúbrica y Criterios de Evaluación

| Criterio | Ponderación | Descripción Detallada |
|---|---|---|
| Punto 1 - Correctitud algorítmica | 30% | Cálculo exacto para valores cero, cuadrados perfectos y valores con residuo. Preservación del valor original en RAM[0]. |
| Punto 1 - Eficiencia y convenciones Hack | 20% | Manejo limpio de registros A, D y M, bucles finitos bien condicionados y terminación limpia con bucle infinito de cierre. |
| Punto 2 - Polling de entrada (KBD) | 20% | Lectura robusta del registro RAM[24576], comparación adecuada de códigos ASCII y respuesta sin bloqueos del sistema. |
| Punto 2 - Direccionamiento de SCREEN | 25% | Punteros correctos para escribir 2 registros de memoria de 16 bits por fila y saltos de +32 registros por línea a lo largo de las 32 filas del glifo (64 registros en total). |
| Entrega individual, formato y equipo | 5% | Subida individual de las evidencias completas del equipo en el buzón antes de las 12:00 m. del 17 de septiembre, nombres completos de integrantes y regla de alternancia en comentarios. |
