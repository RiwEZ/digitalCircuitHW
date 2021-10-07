`include "BitCount_UD.v"

module stimulus;
    reg clk;
    reg reset;
    reg x;
    wire [1:0]q;

    bitCount_UD bitCUD(q, x, clk, reset);

    initial
        clk = 1'b0;

    initial 
        x = 1'b0;
    
    always
        #5 clk = ~clk;

    initial 
        begin
            $dumpfile("2bitCUD_Wave.vcd");
            $dumpvars(0, stimulus);
            reset = 1'b1;
            x = 1'b0;
            #25 reset = 1'b0;
            #75 x = 1'b1;
            #0 reset = 1'b1;
            #25 reset = 1'b0;
            #5  reset = 1'b0;
            #80 $finish;
        end

    initial
        $monitor($time, "output q = %d reset = %d x = %d",q, reset, x);
    
endmodule