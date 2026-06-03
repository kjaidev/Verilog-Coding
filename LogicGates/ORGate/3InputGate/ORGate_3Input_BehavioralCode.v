module ORGate_3Input_Behavioral (y, a, b, c);

	output reg y;
	input a, b, c;

	always @ (*) begin
	if (a == 1 | b == 1 | c == 1)
		y = 1;
	else
		y = 0;
	end

endmodule
