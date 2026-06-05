module HalfAdder_WithAlwaysBlock (sum, carry, a, b);

	output reg sum, carry;
	input a, b;

	always @ (*) begin 
		sum = a ^ b;
		carry = a & b;
	end

endmodule
