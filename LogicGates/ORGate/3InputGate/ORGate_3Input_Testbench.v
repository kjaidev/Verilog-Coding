module ORGate_3Input_Testbench;

	wire y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg a, b, c;

	ORGate_3Input_Structural uut1 (.y(y_structural), .a(a), .b(b), .c(c));
	ORGate_3Input_Dataflow uut2 (.y(y_dataflow), .a(a), .b(b), .c(c));
	ORGate_3Input_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .a(a), .b(b), .c(c));
	ORGate_3Input_Behavioral uut4 (.y(y_behavioral), .a(a), .b(b), .c(c));

	initial begin
	
	$dumpfile ("ORGate_3Input_Simulation.vcd");
	$dumpvars (0, ORGate_3Input_Testbench);
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

