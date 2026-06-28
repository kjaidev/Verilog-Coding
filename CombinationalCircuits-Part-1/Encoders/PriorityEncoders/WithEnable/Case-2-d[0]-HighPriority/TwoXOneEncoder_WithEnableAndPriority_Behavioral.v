module TwoXOneEncoder_WithEnableAndPriority_Behavioral (

	output reg y,
	output reg v,
	input [1:0] d,
	input en
);
	
	always @ (*) begin
		
		y = 1'b0;
		v = 1'b0;

		if (!en) begin
			y = 1'b0;
			v = 1'b0;
		end else begin
			if (d[0]) begin
				y = 1'b0;
				v = 1'b1;
			end else if (d[1]) begin
				y = 1'b1;
				v = 1'b1;
			end else begin
				y = 1'b0;
				v = 1'b0;
			end
		end
	end

endmodule
