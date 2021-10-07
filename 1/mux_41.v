`include "mux_21.v"

module mux_4to1(mux_out, in_0, in_1, in_2, in_3, sel_0, sel_1);
    input in_0, in_1, in_2, in_3, sel_0, sel_1;
    output mux_out;
    wire mux_1, mux_2;


    mux_2to1 mux1(mux_1, in_0, in_1, sel_0);
    mux_2to1 mux2(mux_2, in_2, in_3, sel_0);
    mux_2to1 mux3(mux_out, mux_1, mux_2, sel_1);
    
endmodule