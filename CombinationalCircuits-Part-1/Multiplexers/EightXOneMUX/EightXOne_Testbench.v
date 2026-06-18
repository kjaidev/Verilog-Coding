module EightXOne_Testbench;

	wire y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg [2:0] sel;
	reg [7:0] d;

	EightXOne_Structural uut1 (.y(y_structural), .sel(sel), .d(d));
	EightXOne_Dataflow uut2 (.y(y_dataflow), .sel(sel), .d(d));
	EightXOne_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .sel(sel), .d(d));
	EightXOne_Behavioral uut4 (.y(y_behavioral), .sel(sel), .d(d));

	initial begin

	$dumpfile ("EightXOne_Simulation.vcd");
	$dumpvars (0, EightXOne_Testbench);

		d = 8'b01010110; sel = 3'b000;
		#10 sel = 3'b001;
		#10 sel = 3'b010;
		#10 sel = 3'b011;
		#10 sel = 3'b100;
		#10 sel = 3'b101;
		#10 sel = 3'b110;
		#10 sel = 3'b111;
		#10 $finish;
	
	end

endmodule
