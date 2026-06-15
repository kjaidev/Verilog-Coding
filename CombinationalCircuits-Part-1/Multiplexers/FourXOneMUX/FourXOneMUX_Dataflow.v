module FourXOneMUX_Dataflow (y, sel, d);

	output y;
	input [1:0] sel;
	input [3:0] d;

	assign y = ((~sel[1]) & (~sel[0]) & d[0]) | ((~sel[1]) & sel[0] & d[1]) | (sel[1] & (~sel[0]) & d[2]) | (sel[1] & sel[0] & d[3]);

endmodule
