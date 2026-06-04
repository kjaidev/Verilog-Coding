module XORGate_Behavioral (y, a, b);
	
	output reg y;
	input a, b;

	always @ (*) begin
	if ((a == 0 & b == 0) | (a == 1 & b == 1))
		y = 0;
	else
		y = 1;
	end

endmodule
