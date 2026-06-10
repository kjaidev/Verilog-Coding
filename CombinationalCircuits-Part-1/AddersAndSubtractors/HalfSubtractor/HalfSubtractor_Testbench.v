module HalfSubtractor_Testbench;

	wire difference_structural, borrow_structural;
	wire difference_dataflow, borrow_dataflow;
	wire difference_withAlwaysBlock, borrow_withAlwaysBlock;
	wire difference_behavioral, borrow_behavioral;
	reg a, b;
	
	HalfSubtractor_Structural uut1 (.difference(difference_structural), .borrow(borrow_structural), .a(a), .b(b));
	HalfSubtractor_Dataflow uut2 (.difference(difference_dataflow), .borrow(borrow_dataflow), .a(a), .b(b));
	HalfSubtractor_WithAlwaysBlock uut3 (.difference(difference_withAlwaysBlock), .borrow(borrow_withAlwaysBlock), .a(a), .b(b));
	HalfSubtractor_Behavioral uut4 (.difference(difference_behavioral), .borrow(borrow_behavioral), .a(a), .b(b));

	initial begin
	
	$dumpfile ("HalfSubtractor_Simulation.vcd");
	$dumpvars (0, HalfSubtractor_Testbench);

	a = 0; b = 0;
	#10 a = 0; b = 1;
	#10 a = 1; b = 0;
	#10 a = 1; b = 1;
	#10 $finish;
	
	end

endmodule
