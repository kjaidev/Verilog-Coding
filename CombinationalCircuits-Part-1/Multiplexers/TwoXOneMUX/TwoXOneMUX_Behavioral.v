module TwoXOneMUX_Behavioral (y, sel, d);

	output reg y;
	input sel;
	input [1:0] d;

	always @ (*) begin
		case(sel)
			1'b0:y=d[0];
			1'b1:y=d[1];
			default:y=0;
		endcase
	end
endmodule
