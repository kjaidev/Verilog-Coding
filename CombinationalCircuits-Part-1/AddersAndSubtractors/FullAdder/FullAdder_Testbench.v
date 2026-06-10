module FullAdder_Testbench;

	wire sum_structural, carry_structural;
	wire sum_dataflow, carry_dataflow;
	wire sum_withAlwaysBlock, carry_withAlwaysBlock;
	wire sum_behavioral, carry_behavioral;
	reg a, b, c;

	FullAdder_Structural uut1 (.sum(sum_structural), .carry(carry_structural), .a(a), .b(b), .c(c));
	FullAdder_Dataflow uut2 (.sum(sum_dataflow), .carry(carry_dataflow), .a(a), .b(b), .c(c));
	FullAdder_WithAlwaysBlock uut3 (.sum(sum_withAlwaysBlock), .carry(carry_withAlwaysBlock), .a(a), .b(b), .c(c));
	FullAdder_Behavioral uut4 (.sum(sum_behavioral), .carry(carry_behavioral), .a(a), .b(b), .c(c));

	initial begin
	
	$dumpfile ("FullAdder_Simulation.vcd");
	$dumpvars (0, FullAdder_Testbench);

	a = 0; b = 0; c = 0;
	#10 a = 0; b = 0; c = 1;
	#10 a = 0; b = 1; c = 0;
	#10 a = 0; b = 1; c = 1;
	#10 a = 1; b = 0; c = 0;
	#10 a = 1; b = 0; c = 1;
	#10 a = 1; b = 1; c = 0;
	#10 a = 1; b = 1; c = 1;
	#10 $finish;

	end

endmodule


