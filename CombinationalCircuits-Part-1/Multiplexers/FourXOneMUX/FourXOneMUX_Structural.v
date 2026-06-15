module FourXOneMUX_Structural (y, sel, d);

	output y;
	input [1:0] sel;
	input [3:0] d;

	wire sel1_not, sel0_not, and1, and2, and3, and4;

	not(sel1_not, sel[1]);
	not(sel0_not, sel[0]);
	and(and1, sel1_not, sel0_not, d[0]);
	and(and2, sel1_not, sel[0], d[1]);
	and(and3, sel[1], sel0_not, d[2]);
	and(and4, sel[1], sel[0], d[3]);

	or(y, and1, and2, and3, and4);

endmodule

