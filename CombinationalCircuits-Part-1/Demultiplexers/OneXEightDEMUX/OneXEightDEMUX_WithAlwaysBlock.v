module OneXEightDEMUX_WithAlwaysBlock (

	output reg [7:0] y,
	input [2:0] sel,
	input d

);	
	
	always @ (*) begin

		y[0] = (~sel[2] & ~sel[1] & ~sel[0] & d);
		y[1] = (~sel[2] & ~sel[1] & sel[0] & d);
		y[2] = (~sel[2] & sel[1] & ~sel[0] & d);
		y[3] = (~sel[2] & sel[1] & sel[0] & d);
		y[4] = (sel[2] & ~sel[1] & ~sel[0] & d);
		y[5] = (sel[2] & ~sel[1] & sel[0] & d);
		y[6] = (sel[2] & sel[1] & ~sel[0] & d);
		y[7] = (sel[2] & sel[1] & sel[0] & d);

	end

endmodule
