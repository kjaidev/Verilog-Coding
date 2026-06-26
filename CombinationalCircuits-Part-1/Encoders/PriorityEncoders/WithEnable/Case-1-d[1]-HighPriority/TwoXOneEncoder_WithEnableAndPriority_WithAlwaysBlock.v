module TwoXOneEncoder_WithEnableAndPriority_WithAlwaysBlock (
	
	output y,
	output v,
	input [1:0] d,
	input en
);

	always @ (*) begin

		y = d[1] & en;
		v = |d & en;
	
	end

endmodule
