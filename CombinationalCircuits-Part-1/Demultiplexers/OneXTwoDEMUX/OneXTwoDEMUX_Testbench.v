module OneXTwoDEMUX_Testbench;

	wire [1:0] y_structural;
	wire [1:0] y_dataflow;
	wire [1:0] y_withAlwaysBlock;
	wire [1:0] y_behavioral;

	reg sel;
	reg d;
	
	OneXTwoDEMUX_Structural uut1 (
        .y(y_structural), 
        .sel(sel), 
        .d(d)
	);
	
	OneXTwoDEMUX_Dataflow uut2 (
        .y(y_dataflow), 
        .sel(sel), 
        .d(d)
	);

	OneXTwoDEMUX_WithAlwaysBlock uut3 (
        .y(y_withAlwaysBlock), 
        .sel(sel), 
        .d(d)
	);

	OneXTwoDEMUX_Behavioral uut4 (
        .y(y_behavioral), 
        .sel(sel), 
        .d(d)
	);
	
	initial begin

	$dumpfile ("OneXTwoDEMUX_Simulation.vcd");
	$dumpvars (0, OneXTwoDEMUX_Testbench);

	d = 1'b0; sel = 1'b0;
	#10 d = 1'b1; sel = 1'b0;
	#10 d = 1'b0; sel = 1'b1;
	#10 d = 1'b1; sel = 1'b1;
	#10 $finish;

	end

endmodule
