
module fullAdder(sum, cout, a, b, cin);
    input a, b, cin;
    output sum, cout;
    wire s, a1, a2;

    xor xor1(s, a, b);
    xor xor2(sum, s, cin);
    and and1(a1, cin, s);
    and and2(a2, a, b);
    or or1(cout, a1, a2);
endmodule