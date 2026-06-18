module EightXOne_WithAlwaysBlock (

	output reg y,
	input [2:0] sel,
	input [7:0] d
);

	always @ (*) begin
		y = (~sel[2] & ~sel[1] & ~sel[0] & d[0])|(~sel[2] & ~sel[1] & sel[0] & d[1])|(~sel[2] & sel[1] & ~sel[0] & d[2])|(~sel[2] & sel[1] & sel[0] & d[3])|(sel[2] & ~sel[1] & ~sel[0] & d[4])|(sel[2] & ~sel[1] & sel[0] & d[5])|(sel[2] & sel[1] & ~sel[0] & d[6])|(sel[2] & sel[1] & sel[0] & d[7]);
	end

endmodule
