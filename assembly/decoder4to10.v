module decoder4to10( WA, W );
	input [3:0] WA;
	output [9:0] W;
	reg [9:0]W;
	
	always @(WA)
	case({WA})
		
		4'b0000: W = 10'b0000000001;
		4'b0001: W = 10'b0000000010;
		4'b0010: W = 10'b0000000100;
		4'b0011: W = 10'b0000001000;
		4'b0100: W = 10'b0000010000;
		4'b0101: W = 10'b0000100000;
		4'b0110: W = 10'b0001000000;
		4'b0111: W = 10'b0010000000;
		4'b1000: W = 10'b0100000000;
		4'b1001: W = 10'b1000000000;
	endcase
endmodule
	
	
	