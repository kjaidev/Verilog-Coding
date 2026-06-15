module FourXOneMUX_Testbench;

	wire y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg [1:0] sel;
	reg [3:0] d;

	FourXOneMUX_Structural uut1 (.y(y_structural), .sel(sel), .d(d));
	FourXOneMUX_Dataflow uut2 (.y(y_dataflow), .sel(sel), .d(d));
	FourXOneMUX_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .sel(sel), .d(d));
	FourXOneMUX_Behavioral uut4 (.y(y_behavioral), .sel(sel), .d(d));

	initial begin
	
	$dumpfile ("FourXOneMUX_Simulation.vcd");
	$dumpvars (0, FourXOneMUX_Testbench);

	d = 4'b0101; sel = 2'b00;
	#10 sel = 2'b01;
	#10 sel = 2'b10;
	#10 sel = 2'b11;
	#10 $finish;

	end

endmodule
