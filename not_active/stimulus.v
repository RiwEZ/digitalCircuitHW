`include "full_addr.v"

module stimulus();
    reg a, b, cin;
    wire sum, cout;

    fullAdder f1(sum, cout, a, b, cin);

    always begin
        #5 a = ~a;
        #10 b = ~b;
        #15 cin = ~cin;
    end

    initial begin
        a = 1'b0;
        b = 1'b0;
        cin = 1'b0;
        #120 $finish;
    end

    initial
        $monitor ($time, " sum = %d, cout = %d, a = %d, b = %d, cin = %d", sum, cout, a, b, cin);

endmodule

