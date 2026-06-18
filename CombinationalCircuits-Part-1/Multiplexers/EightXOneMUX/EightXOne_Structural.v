module EightXOne_Structural (
	
	output y,
	input [2:0] sel,
	input [7:0] d
);

	wire sel2_not, sel1_not, sel0_not, and1, and2, and3, and4, and5, and6, and7, and8;

	not(sel2_not, sel[2]);
	not(sel1_not, sel[1]);
	not(sel0_not, sel[0]);

	and(and1, sel2_not, sel1_not, sel0_not, d[0]);
	and(and2, sel2_not, sel1_not, sel[0], d[1]);
	and(and3, sel2_not, sel[1], sel0_not, d[2]);
	and(and4, sel2_not, sel[1], sel[0], d[3]);
	and(and5, sel[2], sel1_not, sel0_not, d[4]);
	and(and6, sel[2], sel1_not, sel[0], d[5]);
	and(and7, sel[2], sel[1], sel0_not, d[6]);
	and(and8, sel[2], sel[1], sel[0], d[7]);


	or(y, and1, and2, and3, and4, and5, and6, and7, and8);

endmodule
