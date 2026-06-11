module FullSubtractor_Dataflow (difference, borrow, a, b, c);
	
	output difference, borrow;
	input a, b, c;

	assign difference = a ^ b ^ c;
	assign borrow = (((~a)&(b))|(c & (~(a^b))));

endmodule
