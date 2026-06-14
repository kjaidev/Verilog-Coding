module TwoXOneMUX_WithAlwaysBlock (y, sel, d);

	output reg y;
	input sel;
	input [1:0] d;

	always @ (*) begin
		y = ((~sel) & d[0])|(sel & d[1]);
	end

endmodule
