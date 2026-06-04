module NANDGate_3Input_WithAlwaysBlock (y, a, b, c);

	output reg y;
	input a, b, c;

	always @ (*) begin
		y = ~(a & b & c);
	end

endmodule
