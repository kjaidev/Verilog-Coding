module HalfSubtractor_Structural (difference, borrow, a, b);

	output difference, borrow;
	input a, b;
	wire a_not;

	xor(difference, a, b);
	not(a_not, a);
	and(borrow, a_not, b);

endmodule
