module mux_2to1(mux_out, din_0, din_1, sel);
	input din_0, din_1, sel;
	output mux_out;
	wire w_not1, w_and1, w_and2;

	not not1(w_not1, sel);
	and and1(w_and1, w_not1, din_0);
	and and2(w_and2, sel, din_1);
	or or1(mux_out, w_and1, w_and2);

endmodule