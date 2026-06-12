module FullSubtractor_Behavioral (difference, borrow, a, b, c);
	
	output reg difference, borrow;
       	input a, b, c;
	
	always @ (*) begin

		if (a == 0 & b == 0 & c == 0) begin
			difference = 0; borrow = 0;
		end
		else if (a == 0 & b == 0 & c == 1) begin
			difference = 1; borrow = 1;
		end
		else if (a == 0 & b == 0 & c == 0) begin
			difference = 1; borrow = 1;
		end
		else if (a == 0 & b == 0 & c == 1) begin
			difference = 0; borrow = 1;
		end
		else if (a == 0 & b == 0 & c == 0) begin
			difference = 1; borrow = 0;
		end
		else if (a == 0 & b == 0 & c == 1) begin
			difference = 0; borrow = 0;
		end
		else if (a == 0 & b == 0 & c == 0) begin
			difference = 0; borrow = 0;
		end
		else begin
			difference = 1; borrow = 1;
		end

	end

endmodule
