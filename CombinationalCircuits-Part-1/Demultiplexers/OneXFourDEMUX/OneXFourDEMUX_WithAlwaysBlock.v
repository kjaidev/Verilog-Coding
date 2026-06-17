module OneXFourDEMUX_WithAlwaysBlock (

	output reg [3:0] y,
	input [1:0] sel,
	input d
);

	always @ (*) begin
		y[0] = (~sel[1]) & (~sel[0]) & d;
		y[1] = (~sel[1]) & (sel[0]) & d;
		y[2] = (sel[1]) & (~sel[0]) & d;
		y[3] = (sel[1]) & (sel[0]) & d;
	end

endmodule
