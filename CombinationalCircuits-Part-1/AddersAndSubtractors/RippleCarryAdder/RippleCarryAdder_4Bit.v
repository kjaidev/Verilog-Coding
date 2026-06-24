module RippleCarryAdder_4Bit (

	output [3:0] sum,
	output Carry_Out,
	input [3:0] a,
	input [3:0] b,
);
	
	wire [3:1] w;

	FullAdder FA0 (sum[0], w[1], a[0], b[0], 1'b0);
	FullAdder FA1 (sum[1], w[2], a[1], b[1], w[1]);
	FullAdder FA2 (sum[2], w[3], a[2], b[2], w[2]);
	FullAdder FA3 (sum[3], Carry_Out, a[3], b[3], w[3]);

endmodule

module FullAdder (

	output s,
	output c,
	input a,
	input b,
	input cin
);

	assign s = a ^ b ^ cin;
	assign c = (a & b) | (cin & (a ^ b));

endmodule
