// Prueba de ALU32: 18 funciones de la ALU clasica x 8 pares de operandos de 32 bits = 144 casos
// Cada operando se da en dos mitades de 16 bits con signo (Low, High).
load ALU32.hdl,
output-file ALU32.out,
compare-to ALU32.cmp,
output-list xLow%D1.6.1 xHigh%D1.6.1 yLow%D1.6.1 yHigh%D1.6.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 outLow%D1.6.1 outHigh%D1.6.1 zr%B1.1.1 ng%B1.1.1;

// X = 0x00000000, Y = 0x00000000
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow 0, set xHigh 0, set yLow 0, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0x0000FFFF, Y = 0x00000001
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow -1, set xHigh 0, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0x7FFFFFFF, Y = 0x00000001
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow -1, set xHigh 32767, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0xFFFFFFFF, Y = 0x00000001
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow -1, set xHigh -1, set yLow 1, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0xFFFFFFFF, Y = 0xFFFFFFFF
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow -1, set xHigh -1, set yLow -1, set yHigh -1, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0x12345678, Y = 0x0000ABCD
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow 22136, set xHigh 4660, set yLow -21555, set yHigh 0, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0xFFFE7960, Y = 0x00011170
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow 31072, set xHigh -2, set yLow 4464, set yHigh 1, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y

// X = 0x80000000, Y = 0xFFFFFFFF
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // 0
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // 1
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0, eval, output;   // -1
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0, eval, output;   // x
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // y
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1, eval, output;   // !x
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1, eval, output;   // !y
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // -x
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // -y
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, eval, output;   // x+1
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y+1
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0, eval, output;   // x-1
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // y-1
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, eval, output;   // x+y
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, eval, output;   // x-y
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1, eval, output;   // y-x
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, eval, output;   // x&y
set xLow 0, set xHigh -32768, set yLow -1, set yHigh -1, set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1, eval, output;   // x|y
