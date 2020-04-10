module mod33logic (S, SNEW);
	input [5:0] S;
	output [5:0] SNEW;
	
	assign SNEW[5] = (S[4] & S[3] & S[2] & S[1] & S[0]);
	assign SNEW[4] = (S[4] & ~S[3]) | (S[4] & ~S[2]) | (S[4] & ~S[1]) | (S[4] & ~S[0]) | (~S[4] & S[3] & S[2] & S[1] & S[0]);
	assign SNEW[3] = (S[3] & ~S[2]) | (S[3] & ~S[1]) | (S[3] & ~S[0]) | (~S[3] & S[2] & S[1] & S[0]);
	assign SNEW[2] = (S[2] & ~S[1]) | (S[2] & ~S[0]) | (~S[2] & S[1] & S[0]);
	assign SNEW[1] = S[1] ^ S[0];
	assign SNEW[0] = (~S[5] & ~S[0]);
	
endmodule
