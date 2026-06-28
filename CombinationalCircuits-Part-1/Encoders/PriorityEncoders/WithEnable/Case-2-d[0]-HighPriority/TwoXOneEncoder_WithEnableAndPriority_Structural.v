module TwoXOneEncoder_WithEnableAndPriority_Structural (

	output y,
	output v,
	input [1:0] d,
	input en
);

	wire d0_not, or_branch;
	not(d0_not, d[0]);

	and(y, en, d[1], d0_not);
	or(or_branch, d[1], d[0]);
	and(v, en, or_branch);

endmodule
