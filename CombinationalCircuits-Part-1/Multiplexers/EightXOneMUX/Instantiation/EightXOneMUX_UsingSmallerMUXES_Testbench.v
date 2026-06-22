module EightXOneMUX_UsingSmallerMUXES_Testbench;

	wire y_out;
	reg [2:0] sel;
	reg [7:0] d;

	EightXOneMUX_UsingSmallerMUXES uut (.y(y_out), .sel(sel), .d(d));

	initial begin

	$dumpfile ("EightXOneMUX_UsingSmallerMUXES_Simulation.vcd");
	$dumpvars (0, EightXOneMUX_UsingSmallerMUXES_Testbench);

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
