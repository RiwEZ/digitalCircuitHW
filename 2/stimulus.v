`include "4_bitALU.v"

module stimulus();
reg [3:0]a;
reg [3:0]b;
reg [1:0]c;
wire [3:0]y; 
wire z;


fourbitALU alu(a, b, c, y, z);

initial begin
    $dumpfile("TimeDiagram.vcd");
    $dumpvars(0, stimulus);
    a = 4'h0;
    b = 4'h0;
    c = 2'b00;

// select 00
    #10;
    a = 4'h1;
    b = 4'h1;
    #10;
    a = 4'hF;
    b = 4'hF;
    #10;
    a = 4'hA;
    b = 4'h2;
    #10;
    a = 4'h5;
    b = 4'h5;
    #10;
    a = 4'h4;
    b = 4'h3;
    #10;
    a = 4'hA;
    b = 4'hC;

// select 01
    #10;
    c = 2'b01;
    a = 4'h4;
    b = 4'h4;
    #10;
    a = 4'hA;
    b = 4'h2;
    #10;
    a = 4'hF;
    b = 4'hF;
    #10;
    a = 4'h1;
    b = 4'hF;

// select 10
    #10;
    c = 2'b10;
    a = 4'h1;
    b = 4'h0;
    #10;
    a = 4'h0;
    b = 4'hF;
    #10;
    a = 4'hF;
    b = 4'h0;
    #10;
    a = 4'hA;
    b = 4'hF;

// select 11
    #10;
    c = 2'b11;
    a = 4'h0;
    b = 4'h0;
    #10;
    a = 4'h8;
    b = 4'hA;
    #10;
    a = 4'h2;
    b = 4'h4;
    #10;
    a = 4'h7;
    b = 4'hD;

    #15 $finish;
end

endmodule