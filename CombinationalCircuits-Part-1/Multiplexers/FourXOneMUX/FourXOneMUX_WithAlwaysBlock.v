module FourXOneMUX_WithAlwaysBlock (y, sel, d);
	
	output reg y;
	input [1:0] sel;
	input [3:0] d;
	
	always @ (*) begin
		y = ((~sel[1]) & (~sel[0]) & d[0]) | ((~sel[1]) & sel[0] & d[1]) | (sel[1] & (~sel[0]) & d[2]) | (sel[1] & sel[0] & d[3]);
	end

endmodule
