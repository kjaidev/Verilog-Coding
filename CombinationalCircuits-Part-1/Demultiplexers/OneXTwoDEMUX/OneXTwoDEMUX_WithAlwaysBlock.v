module OneXTwoDEMUX_WithAlwaysBlock (y, sel, d);

	output reg [1:0] y;
	input sel;
	input d;

	always @ (*) begin
		y[0] = (~sel) & d;
		y[1] = sel & d;
	end

endmodule
