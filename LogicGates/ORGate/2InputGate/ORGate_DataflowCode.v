module ORGate_Dataflow (y, a, b);

	output y;
	input a, b;

	assign y = a | b;

endmodule
