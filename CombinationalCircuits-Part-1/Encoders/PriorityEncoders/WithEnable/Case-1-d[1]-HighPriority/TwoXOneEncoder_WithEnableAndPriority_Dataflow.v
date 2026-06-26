module TwoXOneEncoder_WithEnableAndPriority_Dataflow (

	output y,
	output v,
	input [1:0] d,
	input en
);

	assign y = en & d[1];
	assign v = |d & en;

endmodule
