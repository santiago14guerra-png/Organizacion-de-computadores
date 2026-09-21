load ALU3.hdl,
output-file ALU3.out,
compare-to ALU3.cmp,
output-list x%B1.16.1 y%B1.16.1 z%B1.16.1 zx%B1.1.1 nx%B1.1.1 zy%B1.1.1 ny%B1.1.1 f%B1.1.1 no%B1.1.1 zz%B1.1.1 nz%B1.1.1 fz%B1.1.1 noz%B1.1.1 out%B1.16.1 zr%B1.1.1 ng%B1.1.1;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 0, set ny 0, set f 1, set no 1,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 0, set ny 0, set f 0, set no 0,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 0, set zy 1, set ny 1, set f 1, set no 1,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 0, set nx 1, set zy 1, set ny 1, set f 1, set no 1,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000000011, set y %B0000000000000101, set z %B0000000000000111,
set zx 1, set nx 0, set zy 1, set ny 0, set f 1, set no 0,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

set x %B0000000000001010, set y %B0000000000000100, set z %B0000000000000010,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000001010, set y %B0000000000000100, set z %B0000000000000010,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 1, set fz 1, set noz 0,
eval, output;

set x %B0000000000001010, set y %B0000000000000100, set z %B0000000000000010,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 0, set noz 0,
eval, output;

set x %B0000000000001010, set y %B0000000000000100, set z %B0000000000000010,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 1, set nz 0, set fz 1, set noz 0,
eval, output;

set x %B0000000000001010, set y %B0000000000000100, set z %B0000000000000010,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 0, set nz 0, set fz 1, set noz 1,
eval, output;

set x %B0000000000001010, set y %B0000000000000100, set z %B0000000000000010,
set zx 0, set nx 0, set zy 0, set ny 0, set f 1, set no 0,
set zz 1, set nz 1, set fz 1, set noz 1,
eval, output;

