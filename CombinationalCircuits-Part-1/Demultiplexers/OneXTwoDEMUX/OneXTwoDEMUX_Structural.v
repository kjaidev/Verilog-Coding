module OneXTwoDEMUX_Structual (y, sel, d);

	output [1:0] y;
	input sel;
	input d;
	wire sel_not;

	not(sel_not, sel);
	and(y[0], sel_not, d);
	and(y[1], sel, d);

endmodule	
