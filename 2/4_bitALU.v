`include "1_bitALU.v"

module fourbitALU(
    input [3:0]a,
    input [3:0]b,
    input [1:0]c,
    output [3:0]y,
    output z
);

wire [2:0]e;

onebitALU alu1(y[0], e[0], a[0], b[0], 1'b0, c[0], c[1]);
onebitALU alu2(y[1], e[1], a[1], b[1], e[0], c[0], c[1]);
onebitALU alu3(y[2], e[2], a[2], b[2], e[1], c[0], c[1]);
onebitALU alu4(y[3], z, a[3], b[3], e[2], c[0], c[1]);

endmodule