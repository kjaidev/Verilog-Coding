module TwoXOneEncoder_WithEnableAndPriority_WithAlwaysBlock (

	output y,
	output v,
	input [1:0] d,
	input en
);

	always @ (*) begin

		y = en & d[1] & (~d[0]);
		v = en & (d[1] | d[0]);
	
	end

endmodule
