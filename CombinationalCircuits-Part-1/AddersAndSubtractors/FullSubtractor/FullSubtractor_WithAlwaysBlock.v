module FullSubtractor_WithAlwaysBlock (difference, borrow, a, b, c);
	
	output reg difference, borrow;
	input a, b, c;
	
	always @ (*) begin
		difference = a ^ b ^ c;
		borrow = (~a & b) | (c & ~(a ^ b));
	end

endmodule
