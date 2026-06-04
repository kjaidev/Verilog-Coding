module NANDGate_3Input_Dataflow (y, a, b, c);

	output y;
	input a, b, c;

	assign y = ~(a & b & c);

endmodule

