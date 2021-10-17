
module stimulus;
    reg clk;
    reg reset;
    reg x;
    wire [1:0]q;

    // HW04 Add output L (G Block)
    wire l;
    assign L = l; // for showing Output (L)

    bitCount_UD_addG bitCUD(q, l, x, clk, reset);

    initial
        clk = 1'b0;

    initial 
        x = 1'b0;
    
    always
        #5 clk = ~clk;

    initial 
        begin
            $dumpfile("2bitCUD_AddG.vcd");
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
        $monitor($time, " output L = %d  q = %d (%d%d) reset = %d x = %d",L, q, q[1], q[0], reset, x);
    
endmodule