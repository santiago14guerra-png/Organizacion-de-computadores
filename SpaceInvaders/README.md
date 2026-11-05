# Space Invaders en Jack

Organización de Computadores · Tercer parcial / Proyecto final

- **Integrantes:** Santiago Guerra, Jacobo Restrepo Torres y Emmanuel Cardona
- **Repositorio:** https://github.com/santiago14guerra-png/Organizacion-de-computadores (carpeta `SpaceInvaders`)

## Cómo compilar y ejecutar

1. Compilar (desde la carpeta `tools` de Nand2Tetris):
   ```
   sh JackCompiler.sh ../SpaceInvaders
   ```
   Los `.vm` ya vienen compilados, así que este paso solo hace falta si se cambia algún `.jack`.
2. Abrir el **VM Emulator** (`sh VMEmulator.sh`).
3. **File → Load Program** y elegir la carpeta `SpaceInvaders` (la carpeta, no un archivo). Responder **Yes** si pregunta por el sistema operativo integrado.
4. Poner **No animation** y la velocidad al máximo. Si no, el juego va lento.
5. Pulsar **Run**, hacer clic en la pantalla y pulsar **Enter**.

## Teclas

| Tecla | Acción |
|---|---|
| ← → | Mover al terrícola |
| Espacio | Disparar (una bala a la vez) |
| Enter | Empezar |
| R | Jugar de nuevo (en la pantalla final) |
| Q | Salir |

## Reglas

Tres filas de cuatro marcianos, de dos tipos: **redondo** (20 puntos) y **cuadrado** (10 puntos). Se gana al eliminar los 12 antes de que alguno cruce la línea punteada. Si uno la cruza, se pierde. No se mide el tiempo. Mientras menos marcianos quedan, más rápido avanzan.

## Clases

| Archivo | Para qué sirve |
|---|---|
| `Main.jack` | Punto de entrada: inicio, partidas y reinicio |
| `Juego.jack` | Bucle principal de una partida |
| `Tablero.jack` | Paredes, línea, suelo y datos de arriba (puntos y marcianos) |
| `Jugador.jack` | El terrícola |
| `Bala.jack` | El disparo y su choque por cajas (AABB) |
| `Flota.jack` | Los 12 marcianos: movimiento, pared y puntos |
| `Marciano.jack` | Un marciano: dibujo, patas, explosión |
| `Pantallas.jack` | Pantallas de inicio y fin |

## Memoria

Todo `new` tiene su `dispose` (que termina en `Memory.deAlloc`). Todo se crea una sola vez al empezar la partida y `Juego.dispose()` lo libera en cascada, así que reiniciar con R reutiliza el mismo espacio del heap. Los textos entre comillas también se liberan después de imprimirse.

## Animación

Cada figura se borra, cambia de posición y se vuelve a dibujar. El bucle de `Juego.jugar` hace esto en cada vuelta y espera con `Sys.wait(15)`. La flota solo avanza cada `vivos + 9` vueltas.

## Límites conocidos

- `Keyboard.keyPressed` entrega una sola tecla a la vez, así que mover y disparar a la vez puede no funcionar de forma fluida.
- La velocidad real depende de la computadora y de la velocidad del emulador.

## Historial de versiones

El repositorio guarda las versiones anteriores en el historial de git (`git log -- SpaceInvaders`). Las versiones previas al último commit se reconstruyeron a partir del registro de trabajo.

| Versión | Problema que tenía |
|---|---|
| Borrador inicial | No compilaba: `posx` en vez de `posX`, `funtion`, `main` sin `void`, y `borrarCirculo` pintaba en negro |
| v1 | Primera versión completa, con nombres en inglés. Letras grandes con huecos y textos del inicio descentrados |
| v2 | Todo en español, pero muy lento: `Sys.wait(40)` daba unos 41 ms por vuelta |
| v3 | Más rápido (`Sys.wait(15)`), pero los marcianos usaban dibujos de bits difíciles de explicar |
| v4 | Marcianos más simples, pero seguían con bits |
| v5 (final) | Marcianos dibujados con `Screen`, igual que el terrícola |
