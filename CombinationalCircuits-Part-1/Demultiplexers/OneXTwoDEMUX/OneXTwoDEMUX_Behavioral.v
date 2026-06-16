module OneXTwoDEMUX_Behavioral (y, sel, d);

	output reg [1:0] y;
	input sel;
	input d;

	always @ (*) begin
		case (sel)
			1'b0: begin
				y[0] = d;
				y[1] = 1'b0;
			end
			1'b1: begin
				y[0] = 1'b0;
				y[1] = d;
			end
			default: y = 2'b00;
		endcase
	end

endmodule