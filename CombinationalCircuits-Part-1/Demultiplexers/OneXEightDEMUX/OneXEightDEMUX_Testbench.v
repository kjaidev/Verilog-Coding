module OneXEightDEMUX_Testbench;

	wire [7:0] y_structural, y_dataflow, y_withAlwaysBlock, y_behavioral;
	reg [2:0] sel;
	reg d;

	OneXEightDEMUX_Structural uut1 (.y(y_structural), .sel(sel), .d(d));
	OneXEightDEMUX_Dataflow uut2 (.y(y_dataflow), .sel(sel), .d(d));
	OneXEightDEMUX_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .sel(sel), .d(d));
	OneXEightDEMUX_Behavioral uut4 (.y(y_behavioral), .sel(sel), .d(d));

	initial begin
	
	$dumpfile ("OneXEightDEMUX_Simulation.vcd");
	$dumpvars (0, OneXEightDEMUX_Testbench);

	d = 1'b1; sel = 3'b000;
	#10 d = 1'b1; sel = 3'b001;
	#10 d = 1'b1; sel = 3'b010;
	#10 d = 1'b1; sel = 3'b011;
	#10 d = 1'b1; sel = 3'b100;
	#10 d = 1'b1; sel = 3'b101;
	#10 d = 1'b1; sel = 3'b110;
	#10 d = 1'b1; sel = 3'b111;
	#10 $finish;

	end

endmodule
