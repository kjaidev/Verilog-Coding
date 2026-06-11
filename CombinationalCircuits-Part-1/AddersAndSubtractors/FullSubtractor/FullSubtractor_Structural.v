module FullSubtractor_Structural (difference, borrow, a, b, c);

	output difference, borrow;
	input a, b, c;
	wire xor1, not1, not2, and1, and2;

	xor(xor1, a, b);
	xor(difference, xor1, c);
	
	not(not1, a);
	and(and1, not1, b);
	not(not2, xor1);
	and(and2, not2, c);
	or(borrow, and1, and2);

endmodule
