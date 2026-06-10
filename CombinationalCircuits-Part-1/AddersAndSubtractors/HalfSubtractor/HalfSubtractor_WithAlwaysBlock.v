module HalfSubtractor_WithAlwaysBlock (difference, borrow, a, b);

	output reg difference, borrow;
	input a, b;

	always @ (*) begin
		difference = a ^ b;
		borrow = (~a) & b;
	end

endmodule
