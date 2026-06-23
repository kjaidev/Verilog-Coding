module OneXEightDEMUX_UsingSmallerDEMUXES_Instantiation (
	output [7:0] y,
	input [2:0] sel,
	input d
);
	wire w0;
	wire w1;

	OneXTwo_DEMUX stage1 (
		.y0(w0),
		.y1(w1),
		.sel(sel[2]),
		.d(d)
	);

	OneXFour_DEMUX stage2_top (
		.y(y[3:0]),
		.sel(sel[1:0]),
		.d(w0)
	);

	OneXFour_DEMUX stage2_bottom (
		.y(y[7:4]),
		.sel(sel[1:0]),
		.d(w1)
	);
endmodule

module OneXTwo_DEMUX (
	output reg y0,
	output reg y1,
	input sel,
	input d
);
	always @ (*) begin
		y0 = 1'b0;
		y1 = 1'b0;
		case (sel)
			1'b0: y0 = d;
			1'b1: y1 = d;
			default: begin y0 = 1'b0; y1 = 1'b0; end
		endcase
	end
endmodule

module OneXFour_DEMUX (
	output reg [3:0] y,
	input [1:0] sel,
	input d
);
	always @ (*) begin
		y = 4'b0000;
		case (sel)
			2'b00: y[0] = d;
			2'b01: y[1] = d;
			2'b10: y[2] = d;
			2'b11: y[3] = d;
			default: y = 4'b0000;
		endcase
	end
endmodule
