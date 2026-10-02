// Prueba de ALU3 (sin nw): 6 funciones de la etapa 1 cruzadas con 6 de la etapa 2
// (en pareja: x+y|w+z, x-y|z-w, x AND y|w AND z, -x|z anulado, x+1|!(w+z), 0|z ignorado)
// sobre 7 combinaciones de x, y, z = 42 casos
load ALU3.hdl,
output-file ALU3.out,
compare-to ALU3.cmp,
output-list x%D1.6.1 y%D1.6.1 z%D1.6.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 zz%B1.1.1 nz%B1.1.1 fz%B1.1.1 noz%B1.1.1 out%D1.6.1 zr%B1.1.1 ng%B1.1.1;

// etapa 1: w = x+y ; etapa 2: out = w+z
set x 0, set y 0, set z 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;
set x -1, set y -1, set z -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;
set x 32767, set y 1, set z 1, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;
set x -32768, set y 1, set z 2, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;
set x 5, set y 3, set z 2, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;
set x 100, set y -30, set z 7, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;
set x -8, set y 12, set z 3, set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0, set zz 0, set nz 0, set fz 1, set noz 0, eval, output;

// etapa 1: w = x-y ; etapa 2: out = z-w
set x 0, set y 0, set z 0, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;
set x -1, set y -1, set z -1, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;
set x 32767, set y 1, set z 1, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;
set x -32768, set y 1, set z 2, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;
set x 5, set y 3, set z 2, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;
set x 100, set y -30, set z 7, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;
set x -8, set y 12, set z 3, set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1, set zz 0, set nz 1, set fz 1, set noz 1, eval, output;

// etapa 1: w = x AND y ; etapa 2: out = w AND z
set x 0, set y 0, set z 0, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;
set x -1, set y -1, set z -1, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;
set x 32767, set y 1, set z 1, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;
set x -32768, set y 1, set z 2, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;
set x 5, set y 3, set z 2, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;
set x 100, set y -30, set z 7, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;
set x -8, set y 12, set z 3, set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0, set zz 0, set nz 0, set fz 0, set noz 0, eval, output;

// etapa 1: w = -x ; etapa 2: out = z anulado: w AND 0
set x 0, set y 0, set z 0, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;
set x -1, set y -1, set z -1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;
set x 32767, set y 1, set z 1, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;
set x -32768, set y 1, set z 2, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;
set x 5, set y 3, set z 2, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;
set x 100, set y -30, set z 7, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;
set x -8, set y 12, set z 3, set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1, set zz 1, set nz 0, set fz 0, set noz 0, eval, output;

// etapa 1: w = x+1 ; etapa 2: out = !(w+z)
set x 0, set y 0, set z 0, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;
set x -1, set y -1, set z -1, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;
set x 32767, set y 1, set z 1, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;
set x -32768, set y 1, set z 2, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;
set x 5, set y 3, set z 2, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;
set x 100, set y -30, set z 7, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;
set x -8, set y 12, set z 3, set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1, set zz 0, set nz 0, set fz 1, set noz 1, eval, output;

// etapa 1: w = 0 ; etapa 2: out = z ignorado: w+0
set x 0, set y 0, set z 0, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
set x -1, set y -1, set z -1, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
set x 32767, set y 1, set z 1, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
set x -32768, set y 1, set z 2, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
set x 5, set y 3, set z 2, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
set x 100, set y -30, set z 7, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
set x -8, set y 12, set z 3, set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0, set zz 1, set nz 0, set fz 1, set noz 0, eval, output;
