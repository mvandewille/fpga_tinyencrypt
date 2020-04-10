module mux4to1_3b(F, W0, W1, W2, W3, S);
	
	input [2:0] W0, W1, W2, W3;
	input[1:0] S;
	output [2:0]F;
	
	assign F = S[1] ? (S[0] ? W0:W1) : (S[0] ? W2:W3);
	
endmodule
