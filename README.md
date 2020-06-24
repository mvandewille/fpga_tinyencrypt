# fpga_tinyencrypt
Files from CPR E 281 Final Project - A tiny encryption algorithm encoder/decoder for FPGA

Altera Quartus Prime files designed to be used with an Altera Cyclone IV FPGA board to implement an encoder/decoder that uses tiny encryption algorithm.

Created using block diagrams and verilog files. User inputs a 32-bit key and 16-bit value using switches on the board to assign bits and a button to load. Assignment set a limit of one register file with two read ports, so logic is passed into an ALU which performs the algorithm by reading necessary components two at a time and performing math to process for an encrypted result which is displayed on seven segment displays two bytes at a time.
