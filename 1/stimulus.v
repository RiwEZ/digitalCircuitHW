`include "1_bitALU.v"

module stimulus();
    wire y, z;
    reg a, b, cin, c0, c1;
    onebitALU alu(y, z, a, b, cin, c0, c1);

    always #5 a = ~a;
    always #10 b = ~b;
    always #15 cin = ~cin;

    initial begin
        $dumpfile("TimeDiagram.vcd");
        $dumpvars(0, stimulus);
        a = 1'b0;
        b = 1'b0;
        cin = 1'b0;
        c0 = 1'b0;
        c1 = 1'b0;

        #20 c0 = 1'b1;
        #20 begin 
            c0 = 1'b0;
            c1 = 1'b1;
        end
        #20 c0 = 1'b1;

        #20 begin 
            c0 = 1'b0;
            c1 = 1'b0;
        end

        #20 $finish;
    end

endmodule