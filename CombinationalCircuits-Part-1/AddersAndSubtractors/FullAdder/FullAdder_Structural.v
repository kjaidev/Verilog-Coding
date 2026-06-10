module FullAdder_Structural (sum, carry, a, b, c);

	output sum, carry;
	input a, b, c;

	wire xor1, and1, and2;
	
	xor(xor1, a, b);
	xor(sum, xor1, c);

	and (and1, a, b);
	and (and2, xor1, c);
	or (carry, and1, and2); 

endmodule
