module mux3to1_4b(F, W0, W1, W2, S);
	
	input [3:0] W0, W1, W2;
	input [1:0] S;
	output [3:0] F;
	
	assign F = S[1] ? W2 : (S[0] ? W1 : W0);
endmodule
