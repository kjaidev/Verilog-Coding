module OneXTwoDEMUX_Dataflow (y, sel, d);

	output [1:0] y;
	input sel;
	input d;

	assign y[0] = (~sel) & d;
	assign y[1] = sel & d;

endmodule
