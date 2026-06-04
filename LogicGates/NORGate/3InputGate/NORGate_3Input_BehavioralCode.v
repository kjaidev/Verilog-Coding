module NORGate_3Input_BehavioralCode (y, a, b, c);

	output reg y;
	input a, b, c;

	always @ (*) begin
	if (a == 0 & b == 0 & c == 0)
		y = 1;
	else
		y = 0;
	end

endmodule
