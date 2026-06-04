module XNORGate_Behavioral (y, a, b);

	output reg y;
	input a, b;

	always @ (*) begin
	if ((a == 0 & b == 0) | (a == 1 & b == 1))
		y = 1;
	else
		y = 0;
	end

endmodule
