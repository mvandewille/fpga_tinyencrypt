module mux2to1_4b(F, W0, W1, S);
	
	input [3:0] W0, W1;
	input S;
	output [3:0] F;
	
	assign F = S ? W1 : W0;
endmodule
