module RippleCarryAdder_4Bit_Testbench;

	wire [3:0] sum;
	wire Carry_Out;
	
	reg [3:0] a;
	reg [3:0] b;

	RippleCarryAdder_4Bit uut (.sum(sum), .Carry_Out(Carry_Out), .a(a), .b(b));

	initial begin

		$dumpfile ("RippleCarryAdder_4Bit_Simulation.vcd");
		$dumpvars (0, RippleCarryAdder_4Bit_Testbench);

		a = 4'd0; b = 4'd0;
		$display ("a = %b, b = %b, Sum = %b, Carry = %b", a, b, sum, Carry_Out);

		#10 a = 4'd1; b = 4'd4;
		$display ("a = %b, b = %b, Sum = %b, Carry = %b", a, b, sum, Carry_Out);

		#10 a = 4'd6; b = 4'd9;
		$display ("a = %b, b = %b, Sum = %b, Carry = %b", a, b, sum, Carry_Out);

		#10 a = 4'd12; b = 4'd5;
		$display ("a = %b, b = %b, Sum = %b, Carry = %b", a, b, sum, Carry_Out);

		#10 a = 4'd10; b = 4'd2;
		$display ("a = %b, b = %b, Sum = %b, Carry = %b", a, b, sum, Carry_Out);

		#10 $finish;

	end

endmodule
