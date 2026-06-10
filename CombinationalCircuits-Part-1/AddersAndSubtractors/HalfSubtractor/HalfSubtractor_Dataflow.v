module HalfSubtractor_Dataflow (difference, borrow, a, b);

	output difference, borrow;
	input a, b;

	assign difference = a ^ b;
	assign borrow = (~a) & b;

endmodule
