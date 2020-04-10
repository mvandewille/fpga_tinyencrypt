module operator(N1, N2, OPER, OUT);

	input [7:0] N1, N2;
	input [2:0] OPER;
	output [7:0] OUT;
	reg [7:0] OUT;
	
	always @ (OPER or N1 or N2)
		case(OPER)
			3'b000: OUT = N1;
			3'b001: OUT = N1<<4;
			3'b010: OUT = N1>>5;
			3'b011: OUT = N1 + N2;
			3'b100: OUT = N1 - N2;
			3'b101: OUT = N1 ^ N2;
			3'b110: OUT = 8'b11100000;
			default: OUT = N1;
		endcase
endmodule
