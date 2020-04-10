module mod33next( S5, S4, S3, S2, S1, S0, Sn5, Sn4, Sn3, Sn2, Sn1, Sn0 );
	input S5, S4, S3, S2, S1, S0;
	output Sn5, Sn4, Sn3, Sn2, Sn1, Sn0;
	
	assign Sn5 = S4 & S3 & S2 & S1 & S0;
	assign Sn4 = (S4 & ~S3) | (S4 & ~S2) | (S4 & ~S1) | (S4 & ~S0) | (~S4 & S3 & S2 & S1 & S0);
	assign Sn3 = (S3 & ~S2) | (S3 & ~S1) | (S3 & ~S0) | (~S3 & S2 & S1 & S0);
	assign Sn2 = (S2 & ~S1) | (S2 & ~S0) | (~S2 & S1 & S0);
	assign Sn1 = S1 ^ S0;
	assign Sn0 = ~S5 & ~S0;
	
endmodule
