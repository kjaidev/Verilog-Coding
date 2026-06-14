module TwoXOneMUX_Dataflow (y, sel, d);

	output y;
	input sel;
	input [1:0] d;

	assign y = ((~sel) & d[0])|(sel & d[1]);

endmodule
