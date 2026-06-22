module EightXOneMUX_UsingSmallerMUXES (
	output y,
	input [2:0] sel, 
	input [7:0] d
);
	wire mux4_out0;
	wire mux4_out1;

	FourXOne_MUX fo_m1 (
	        .y_4x1(mux4_out0),
       		.sel_4x1(sel[1:0]),
	        .data_4x1(d[3:0])
	);

	FourXOne_MUX fo_m2 (
	        .y_4x1(mux4_out1),
	        .sel_4x1(sel[1:0]),
        	.data_4x1(d[7:4])
	);

	TwoXOne_MUX to_m1 (
        	.y_2x1(y),
	        .sel_2x1(sel[2]),
		.data_2x1({mux4_out1, mux4_out0}) 
	);
endmodule

module FourXOne_MUX (
	output reg y_4x1, 
	input [1:0] sel_4x1,
	input [3:0] data_4x1
);
	always @ (*) begin
		case (sel_4x1)
			2'b00: y_4x1 = data_4x1[0];
			2'b01: y_4x1 = data_4x1[1];
			2'b10: y_4x1 = data_4x1[2];
			2'b11: y_4x1 = data_4x1[3];
			default: y_4x1 = 1'b0;
		endcase
	end
endmodule

module TwoXOne_MUX (
	output reg y_2x1,
	input sel_2x1,
	input [1:0] data_2x1
);
	always @ (*) begin
		case (sel_2x1)
			1'b0: y_2x1 = data_2x1[0]; 
			1'b1: y_2x1 = data_2x1[1]; 
			default: y_2x1 = 1'b0;
		endcase
	end
endmodule