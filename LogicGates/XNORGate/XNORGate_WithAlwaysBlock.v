module XNORGate_WithAlwaysBlock (y, a, b);
	
	output reg y;
	input a, b;

	always @ (*) begin
		y = ~(a | b);
	end

endmodule
