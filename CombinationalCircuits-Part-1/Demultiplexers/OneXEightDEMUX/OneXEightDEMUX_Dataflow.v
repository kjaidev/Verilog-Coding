module OneXEightDEMUX_Dataflow (

	output [7:0] y,
	input [2:0] sel,
	input d
);

	assign y[0] = (~sel[2] & ~sel[1] & ~sel[0] & d);
	assign y[1] = (~sel[2] & ~sel[1] & sel[0] & d);
	assign y[2] = (~sel[2] & sel[1] & ~sel[0] & d);
	assign y[3] = (~sel[2] & sel[1] & sel[0] & d);
	assign y[4] = (sel[2] & ~sel[1] & ~sel[0] & d);
	assign y[5] = (sel[2] & ~sel[1] & sel[0] & d);
	assign y[6] = (sel[2] & sel[1] & ~sel[0] & d);
	assign y[7] = (sel[2] & sel[1] & sel[0] & d);


endmodule

