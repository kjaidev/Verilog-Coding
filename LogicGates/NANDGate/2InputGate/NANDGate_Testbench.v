module NANDGate_Testbench;

	wire y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg a, b;

	NANDGate_Structural uut1 (.y(y_structural), .a(a), .b(b));
	NANDGate_Dataflow uut2 (.y(y_dataflow), .a(a), .b(b));
	NANDGate_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .a(a), .b(b));
	NANDGate_Behavioral uut4 (.y(y_behavioral), .a(a), .b(b));

	initial begin

	$dumpfile ("NANDGate_Simulation.vcd");
	$dumpvars (0, NANDGate_Testbench);

	a = 0; b = 0;
	#10 a = 0; b = 1;
	#10 a = 1; b = 0;
	#10 a = 1; b = 1;
	#10 $finish;

	end

endmodule
