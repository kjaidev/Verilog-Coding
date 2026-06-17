module OneXFourDEMUX_Dataflow (

	output [3:0] y,
	input [1:0] sel,
	input d
);

	assign y[0] = (~sel[1]) & (~sel[0]) & d;
	assign y[1] = (~sel[1]) & (sel[0]) & d;
	assign y[2] = (sel[1]) & (~sel[0]) & d;
	assign y[3] = (sel[1]) & (sel[0]) & d;

endmodule
