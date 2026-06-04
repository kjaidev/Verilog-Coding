module NOTGate_WithAlwaysBlock (y, a);

	output reg y;
	input a;
	
	always @ (*) begin
		y = ~a;
	end

endmodule
