// File name: ASM/Parcial 2/Sqrt.tst
// Prueba Sqrt.asm con: N=0, N=1 (casos borde), cuadrados perfectos,
// valores con residuo, y valores grandes cercanos al limite de 16 bits.
// Verifica ademas que RAM[0] (N original) no se modifique.

load Sqrt.asm,
output-file Sqrt.out,
compare-to Sqrt.cmp,
output-list RAM[0]%D1.6.1 RAM[1]%D1.6.1;

set RAM[0] 0;
repeat 105 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 1;
repeat 120 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 2;
repeat 120 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 3;
repeat 120 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 4;
repeat 135 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 8;
repeat 135 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 9;
repeat 150 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 15;
repeat 150 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 16;
repeat 165 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 17;
repeat 165 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 99;
repeat 240 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 100;
repeat 255 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 101;
repeat 255 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 9999;
repeat 1590 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 10000;
repeat 1605 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 32760;
repeat 2805 {
  ticktock;
}
output;

set PC 0,
set RAM[0] 32767;
repeat 2820 {
  ticktock;
}
output;
