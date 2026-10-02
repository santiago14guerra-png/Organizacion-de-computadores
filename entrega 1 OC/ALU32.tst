// Prueba de ALU32 (cada operando = mitad Low + mitad High, enteros con signo de 16 bits)
load ALU32.hdl,
output-file ALU32.out,
compare-to ALU32.cmp,
output-list xLow%D1.6.1 xHigh%D1.6.1 yLow%D1.6.1 yHigh%D1.6.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 outLow%D1.6.1 outHigh%D1.6.1 zr%B1.1.1 ng%B1.1.1;

// suma con acarreo entre mitades
set xLow 20000, set xHigh 0, set yLow -10000, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow -1, set xHigh 0, set yLow -1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow 32767, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow 0, set xHigh 32767, set yLow 0, set yHigh 1, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow -32768, set xHigh -32768, set yLow -32768, set yHigh -32768, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
set xLow 1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;
// AND
set xLow 255, set xHigh -1, set yLow 15, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;
set xLow -1, set xHigh -1, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;
// x-y (nx=1, f=1, no=1)
set xLow 5, set xHigh 0, set yLow 10, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;
set xLow 0, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;
set xLow 100, set xHigh 7, set yLow 100, set yHigh 7, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;
// constantes y negaciones
set xLow 7, set xHigh 7, set yLow 7, set yHigh 7, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;
set xLow 7, set xHigh 7, set yLow 7, set yHigh 7, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;
set xLow 7, set xHigh 7, set yLow 7, set yHigh 7, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 0, eval, output;
set xLow 5, set xHigh 5, set yLow 9, set yHigh 9, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;
set xLow 5, set xHigh 5, set yLow 9, set yHigh 9, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 1, eval, output;
