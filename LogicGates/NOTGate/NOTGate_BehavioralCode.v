module NOTGate_Behavioral (y, a);

	output reg y;
	input a;
	
	always @ (*) begin
	if (a == 1)
		y = 0;
	else
		y = 1;
	end

endmodule
