module TwoXOneEncoder_WithoutEnableAndWithPriority_Dataflow (
	
	output y,
	input [1:0] d
);

	assign y = d[1];

endmodule
