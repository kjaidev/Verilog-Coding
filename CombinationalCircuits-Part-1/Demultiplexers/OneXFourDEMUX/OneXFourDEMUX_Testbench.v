module OneXFourDEMUX_Testbench;

	wire [3:0] y_structural;
	wire [3:0] y_dataflow;
	wire [3:0] y_withAlwaysBlock; 
	wire [3:0] y_behavioral;

	reg [1:0] sel;
	reg d;

	OneXFourDEMUX_Structural uut1 (.y(y_structural), .sel(sel), .d(d));
	OneXFourDEMUX_Dataflow uut2 (.y(y_dataflow), .sel(sel), .d(d));
	OneXFourDEMUX_WithAlwaysBlock uut3 (.y(y_withAlwaysBlock), .sel(sel), .d(d));
	OneXFourDEMUX_Behavioral uut4 (.y(y_behavioral), .sel(sel), .d(d));

	initial begin
	
	$dumpfile ("OneXFourDEMUX_Simulation.vcd");
	$dumpvars (0, OneXFourDEMUX_Testbench);

	d = 1'b1; sel = 2'b00; 
	#10 d = 1'b1; sel = 2'b01;
	#10 d = 1'b1; sel = 2'b10;
	#10 d = 1'b1; sel = 2'b11;
	#10 $finish;

	end

endmodule
