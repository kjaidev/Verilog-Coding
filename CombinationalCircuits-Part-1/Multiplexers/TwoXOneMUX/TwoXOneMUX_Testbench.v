module TwoXOneMUX_Testbench;

	wire y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg sel; 
	reg [1:0] d;

	TwoXOneMUX_Structural uut1 (.y(y_structural), .sel(sel), .d(d));
	TwoXOneMUX_Dataflow uut2 (.y(y_dataflow), .sel(sel), .d(d));
	TwoXOneMUX_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .sel(sel), .d(d));
	TwoXOneMUX_Behavioral uut4 (.y(y_behavioral), .sel(sel), .d(d));

	initial begin

	$dumpfile ("TwoXOneMUX_Simulation.vcd");
	$dumpvars (0, TwoXOneMUX_Testbench);

	d = 2'b01; sel = 1'b0;
	#10 d = 2'b01; sel = 1'b1;
	#10 d = 2'b10; sel = 1'b0;
	#10 d = 2'b10; sel = 1'b1;
	#10 $finish;

	end

endmodule
