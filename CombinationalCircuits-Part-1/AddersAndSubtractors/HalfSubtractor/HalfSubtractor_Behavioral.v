module HalfSubtractor_Behavioral (difference, borrow, a, b);

	output reg difference, borrow;
	input a, b;
	
	always @ (*) begin
		if (a == 0 & b == 0) begin
			difference = 0; borrow = 0;
		end
		else if (a == 0 & b == 1) begin
			difference = 1; borrow = 1;
		end
		else if (a == 1 & b == 0) begin
			difference = 1; borrow = 0;
		end
		else begin
			difference = 0; borrow = 0;
		end
	end
endmodule
