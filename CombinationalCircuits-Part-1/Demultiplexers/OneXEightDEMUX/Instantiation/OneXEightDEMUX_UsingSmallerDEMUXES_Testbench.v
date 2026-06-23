module OneXEightDEMUX_UsingSmallerDEMUXES_Testbench;
	reg [2:0] sel;
	reg d;
	wire [7:0] y;

	OneXEightDEMUX_UsingSmallerDEMUXES_Instatiation uut (
        .y(y), 
        .sel(sel), 
        .d(d)
	);

	initial begin
        
	$dumpfile("OneXEightDEMUX_UsingSmallerDEMUXES_Simulation.vcd");
        $dumpvars(0, OneXEightDEMUX_UsingSmallerDEMUXES_Testbench);

        d = 1'b0; sel = 3'b000;
        #10 d = 1'b1; sel = 3'b000;
        
        #10 d = 1'b0; sel = 3'b001;
        #10 d = 1'b1; sel = 3'b001;
        
        #10 d = 1'b0; sel = 3'b010;
        #10 d = 1'b1; sel = 3'b010;
        
        #10 d = 1'b0; sel = 3'b011;
        #10 d = 1'b1; sel = 3'b011;
        
        #10 d = 1'b0; sel = 3'b100;
        #10 d = 1'b1; sel = 3'b100;
        
        #10 d = 1'b0; sel = 3'b101;
        #10 d = 1'b1; sel = 3'b101;
        
        #10 d = 1'b0; sel = 3'b110;
        #10 d = 1'b1; sel = 3'b110;
        
        #10 d = 1'b0; sel = 3'b111;
        #10 d = 1'b1; sel = 3'b111;
        
        #10 d = 1'b0;
        #10 $finish;

	end
      
endmodule
