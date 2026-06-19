module OneXEightDEMUX_Structural (

	output [7:0] y,
	input [2:0] sel,
	input d
);

	wire sel2_not, sel1_not, sel0_not;

	not (sel2_not, sel[2]);
	not (sel1_not, sel[1]);
	not (sel0_not, sel[0]);

	and (y[0], sel2_not, sel1_not, sel0_not, d);
	and (y[1], sel2_not, sel1_not, sel[0], d);
	and (y[2], sel2_not, sel[1], sel0_not, d);
	and (y[3], sel2_not, sel[1], sel[0], d);
	and (y[4], sel[2], sel1_not, sel0_not, d);
	and (y[5], sel[2], sel1_not, sel[0], d);
	and (y[6], sel[2], sel[1], sel0_not, d);
	and (y[7], sel[2], sel[1], sel[0], d);

endmodule
