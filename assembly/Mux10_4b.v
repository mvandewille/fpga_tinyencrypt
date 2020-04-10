module Mux10_4b( W0, W1, W2, W3, W4, W5, W6, W7, W8, W9, S, F );
	input [3:0] S;
	input [7:0] W0, W1, W2, W3, W4, W5, W6, W7, W8, W9;
	output [7:0] F;
	reg [7:0] F;
	
	always @ ( S ) begin
		if( S == 'b1010 ) begin
			F = 'b10110111;
		end else begin
			F = S[3] ? (S[0] ? W9 : W8) : (S[2] ? (S[1] ? (S[0] ? W7 : W6) : (S[0] ? W5 : W4)) : (S[1] ? (S[0] ? W3 : W2) : (S[0] ? W1 : W0)));
		end
	end
endmodule
