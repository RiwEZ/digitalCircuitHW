`include "D_FF.v"

module bitCount_UD(q, x, clk, reset);
    
    input x, clk, reset;
    output [1:0]q;
    wire q0d0, q1q0, q1d0x;

    not not1(q0d0, q[0]);
    xor xor1(q1d0, q[1], q[0]);
    xor xor2(q1d0x, q1d0, x);

    D_FF d0(q[0], q0d0, clk, reset);
    D_FF d1(q[1], q1d0x, clk, reset);

endmodule