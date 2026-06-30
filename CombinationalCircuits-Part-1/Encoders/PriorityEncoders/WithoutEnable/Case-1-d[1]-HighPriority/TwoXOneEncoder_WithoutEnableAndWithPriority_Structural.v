module TwoXOneEncoder_WithoutEnableAndWithPriority_Structural (

	output y,
	input [1:0] d
);

	buf (y, d[1]);

endmodule
