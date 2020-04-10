module decrypt_logic(S, RA1, RA2, OPER, WA);

	input [4:0] S;
	output [3:0] RA1, RA2, WA;
	output [2:0] OPER;
	
	assign RA1[3] = (S[3] & ~S[2] & ~S[0]) | (S[3] & S[1] & ~S[0]) | (S[4] & ~S[2] & S[0]) | (~S[4] & ~S[3] & S[2] & ~S[1] & S[0]);
	assign RA1[2] = (~S[3] & ~S[0]) | (S[4] & S[2]) | (~S[4] & S[1] & S[0]) | (~S[4] & ~S[2] & S[0]) | (S[3] & S[2] & ~S[1]);
	assign RA1[1] = (S[4] & S[2]) | (S[4] & ~S[1] & ~S[0]) | (~S[4] & ~S[3] & ~S[2] & ~S[1]) | (~S[4] & ~S[3] & S[1] & S[0]) | (S[3] & S[2] & ~S[1] & ~S[0]);
	assign RA1[0] = (S[3] & ~S[1]) | (~S[4] & ~S[2] & S[0]) | (~S[4] & S[1] & S[0]) | (S[4] & ~S[2] & ~S[1]) | (S[4] & ~S[1] & S[0]) | (S[4] & S[2] & S[1]);
	
	assign RA2[3] = (S[4] & S[2]) | (~S[4] & ~S[2] & ~S[1]) | (~S[3] & S[1] & ~S[0]) | (~S[2] & ~S[1] & S[0]) | (S[3] & S[1] & S[0]);
	assign RA2[2] = (S[1] & ~S[0]) | (S[3] & S[0]) | (S[4] & S[1]) | (~S[4] & ~S[3] & ~S[1]) | (~S[3] & S[2] & ~S[0]);
	assign RA2[1] = (~S[3] & S[1] & S[0]) | (S[2] & ~S[1] & S[0]) | (S[3] & S[1] & ~S[0]) | (~S[4] & ~S[3] & S[2] & ~S[1]);
	assign RA2[0] = (S[3] & S[1] & ~S[0]) | (S[4] & S[1] & S[0]) | (~S[4] & ~S[3] & S[2] & S[0]) | (S[4] & ~S[2] & ~S[1] & ~S[0]);
	
	assign OPER[2] = (S[4] & S[0]) | (~S[3] & ~S[1] & S[0]) | (S[3] & ~S[2] & ~S[0]) | (S[3] & S[1] & ~S[0]);
	assign OPER[1] = (S[2] & S[1] & S[0]) | (S[3] & S[2] & ~S[1]) | (~S[4] & ~S[3] & ~S[2] & S[0]) | (~S[4] & ~S[3] & S[2] & ~S[0]) | (S[4] & ~S[2] & ~S[1] & ~S[0]);
	assign OPER[0] = (~S[4] & S[2] & ~S[1]) | (S[3] & ~S[1] & ~S[0]) | (S[3] & S[2] & ~S[0]) | (S[4] & ~S[2] & ~S[1]) | (~S[4] & ~S[3] & ~S[2] & S[1]) | (~S[4] & ~S[3] & S[1] & S[0]) | (~S[4] & ~S[2] & S[1] & S[0]);
	
	assign WA[3] = (S[3] & S[2] & ~S[0]) | (S[4] & ~S[2] & ~S[0]) | (S[4] & S[1] & ~S[0]) | (~S[4] & ~S[3] & S[1] & S[0]) | (~S[4] & ~S[3] & S[2] & S[0]) | (S[3] & ~S[2] & ~S[1] & S[0]);
	assign WA[2] = (S[4] & S[0]) | (~S[4] & ~S[3] & ~S[0]) | (~S[4] & ~S[2] & ~S[0]) | (S[3] & ~S[2] & S[1]) | (S[3] & S[2] & S[0]) | (S[4] & S[2] & ~S[1]) | (~S[4] & ~S[3] & ~S[2] & ~S[1]);
	assign WA[1] = (~S[4] & ~S[3] & ~S[0]) | (S[3] & S[2] & S[0]) | (S[4] & S[2] & ~S[1]) | (S[3] & S[1] & S[0]) | (~S[3] & ~S[2] & ~S[1] & S[0]) | (~S[4] & ~S[2] & ~S[1] & ~S[0]);
	assign WA[0] = (S[3] & S[1]) | (~S[4] & ~S[2] & ~S[0]) | (~S[3] & S[2] & ~S[0]) | (~S[4] & S[2] & ~S[1] & S[0]) | (S[4] & ~S[2] & ~S[1] & S[0]);
	
endmodule

