module NOTGate_Testbench;

	wire y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg a;

	NOTGate_Structural uut1 (.y(y_structural), .a(a));
	NOTGate_Dataflow uut2 (.y(y_dataflow), .a(a));
	NOTGate_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .a(a));
	NOTGate_Behavioral uut4 (.y(y_behavioral), .a(a));

	initial begin

	$dumpfile ("NOTGate_Simulation.vcd");
	$dumpvars (0, NOTGate_Testbench);

	a = 0;
	#10 a = 1;
	#10 a = 0;
	#10 $finish;

	end

endmodule

