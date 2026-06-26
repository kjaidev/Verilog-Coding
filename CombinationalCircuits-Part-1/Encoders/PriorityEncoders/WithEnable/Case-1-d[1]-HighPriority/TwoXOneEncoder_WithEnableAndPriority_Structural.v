module TwoXOneEncoder_WithEnableAndPriority_Structural (

	output y,
	output v,
	input [1:0] d,
	input en
);

	wire or_branch;

	and(y, d[1], en);
	or(or_branch, d[1], d[0]);
	and(v, or_branch, en);

endmodule
