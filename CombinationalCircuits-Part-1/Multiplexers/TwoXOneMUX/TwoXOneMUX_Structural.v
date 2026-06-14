module TwoXOneMUX_Structural (y, sel, d);

	output y;
	input sel;
	input [1:0]d;
	wire sel_not, and1, and2;

	not(sel_not, sel);
	and(and1, sel_not, d[0]);
	and(and2, sel, d[1]);
	or(y, and1, and2);

endmodule
