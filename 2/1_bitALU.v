`include "full_addr.v"
`include "mux_41.v"

module onebitALU(y, z, a, b, cin, c0, c1);
    output y, z;
    input a, b, cin, c0, c1;
    wire y1, y2, y3;
    wire cout, z1, z2;
    wire w1, w2, w3;

    fullAdder f1(y1, cout, a, b, cin);
    and a1(y2, a, b);
    not n1(y3, a);
    xor x1(w1, a, b);
    and a2(w2, c0, c1);
    and a3(z2, w1, w2);
    nor nor1(w3, c0, c1);
    and a4(z1, cout, w3);
    or or1(z, z1, z2);

    mux_4to1 mux2(y, y1, y2, y3, 1'b0, c0, c1);
endmodule