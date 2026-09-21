load ALU32.hdl,
output-file ALU32.out,
compare-to ALU32.cmp,
output-list xLow%B1.16.1 xHigh%B1.16.1 yLow%B1.16.1 yHigh%B1.16.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 outLow%B1.16.1 outHigh%B1.16.1 zr%B1.1.1 ng%B1.1.1;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B0000000000000000,
set yLow %B0000000000000000, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B1111111111111111,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0000000000000001, set xHigh %B0000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0000000000000000,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B1111111111111111, set xHigh %B0111111111111111,
set yLow %B0000000000000001, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0000000000000000, set xHigh %B1000000000000000,
set yLow %B1111111111111111, set yHigh %B1111111111111111,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0101011001111000, set xHigh %B0001001000110100,
set yLow %B1111111111111111, set yHigh %B0000000000000000,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 1, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 1, set ny 1, set f 0, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 0, set ny 0, set f 0, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 1, set nx 1, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 0, set ny 1, set f 1, set no 1,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
eval, output;

set xLow %B0001001000110100, set xHigh %B1010101111001101,
set yLow %B1010101111001101, set yHigh %B0001001000110100,
set zx 0, set nx 1, set zy 0, set ny 1, set f 0, set no 1,
eval, output;

