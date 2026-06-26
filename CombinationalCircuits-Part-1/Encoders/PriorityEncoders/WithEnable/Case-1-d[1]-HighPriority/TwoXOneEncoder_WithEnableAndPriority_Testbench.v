module TwoXOneEncoder_WithEnableAndPriority_Testbench;

	wire y_structural, v_structural;
	wire y_dataflow, v_dataflow;
	wire y_withAlwaysBlock, v_withAlwaysBlock;
	wire y_behavioral, v_behavioral;

	reg [1:0] d;
	reg en;ssss

	TwoXOneEncoder_WithEnableAndPriority_Structural uut1 (.y(y_structural), .v(v_structural), .d(d), .en(en));
	TwoXOneEncoder_WithEnableAndPriority_Dataflow uut2 (.y(y_dataflow), .v(v_dataflow), .d(d), .en(en));
	TwoXOneEncoder_WithEnableAndPriority_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .v(v_withAlwaysBlock), .d(d), .en(en));
	TwoXOneEncoder_WithEnableAndPriority_Behavioral uut4 (.y(y_behavioral), .v(v_behavioral), .d(d), .en(en));

	initial begin
	
		$dumpfile ("TwoXOneEncoder_WithEnableAndPriority_Simulation.vcd");
		$dumpvars (0, TwoXOneEncoder_WithEnableAndPriority_Testbench);

		en = 0; d[1:0] = 2'b00;
		#10 en = 0; d[1:0] = 2'b01;
		#10 en = 0; d[1:0] = 2'b10;
		#10 en = 0; d[1:0] = 2'b11;
		#10 en = 1; d[1:0] = 2'b00;
		#10 en = 1; d[1:0] = 2'b01;
		#10 en = 1; d[1:0] = 2'b10;
		#10 en = 1; d[1:0] = 2'b11;
		#10 $finish;

	end

endmodule
