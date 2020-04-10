module mux2to1(F, W0, W1, S);
	
	input W0, W1, S;
	output F;
	
	assign F = S ? W1 : W0;
endmodule
