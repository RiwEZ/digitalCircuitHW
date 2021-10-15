`include "D_FF.v"

module bitCount_UD_addG(q, l, x, clk, reset);
    
    input x, clk, reset;
    output [1:0]q;
    wire q0d0, q1q0, q1d0x;

    not not1(q0d0, q[0]);
    xor xor1(q1d0, q[1], q[0]);
    xor xor2(q1d0x, q1d0, x);

    D_FF d0(q[0], q0d0, clk, reset);
    D_FF d1(q[1], q1d0x, clk, reset);

    // HW04 Add (G Block to make output (L) is 1 when x = 1, q1 = 0, q0 = 1)
    output [1:0]l;
    wire q1not, xq1;

    not not2(q1not, q[1]);
    and and1(xq1, x, q1not);
    and and2(l[0], xq1, q[0]);
    //_______________________________________________________________________

endmodule