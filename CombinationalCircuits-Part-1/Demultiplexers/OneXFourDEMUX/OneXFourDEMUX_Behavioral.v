module OneXFourDEMUX_Behavioral (

	output reg [3:0] y,
	input [1:0] sel,
	input d
);

	always @ (*) begin
	
		y = 4'b0000;
		
		case (sel)
			2'b00:y[0] = d;
			2'b00:y[1] = d;
			2'b00:y[2] = d;
			2'b00:y[3] = d;
			default:y = 4'b0000;
		endcase
	end

endmodule
