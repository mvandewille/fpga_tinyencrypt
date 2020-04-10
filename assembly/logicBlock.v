module logicBlock( num1, num2, op_num, new_num );

	input [7:0] num1, num2;
	input [2:0] op_num;
	output [7:0] new_num;
	reg [7:0] new_num;
	
	always @ ( op_num or num1 or num2 )
		case( op_num )
			3'b000: new_num = num1;
			3'b001: new_num = num1<<4;
			3'b010: new_num = num1>>5;
			3'b011: new_num = num1 + num2;
			3'b100: new_num = num1 - num2;
			3'b101: new_num = num1 ^ num2;
			3'b110: new_num = 8'b11100000;
			default: new_num = num1;
		endcase
endmodule
