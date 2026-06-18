module OneXFourDEMUX_Structural (

	output [3:0] y,
	input [1:0] sel,
	input d
);

	wire sel1_not, sel0_not;

	not(sel1_not, sel[1]);
	not(sel0_not, sel[0]);

	and (y[0], sel1_not, sel0_not, d);
	and (y[1], sel1_not, sel[0], d);
	and (y[2], sel[1], sel0_not, d);
	and (y[3], sel[1], sel[0], d);

endmodule
