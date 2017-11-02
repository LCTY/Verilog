`timescale 1ns / 1ps

module Transpose_Testbench;

	// Inputs
	reg Clk;
	reg Reset;
	reg [14:0] X;

	// Outputs
	wire [18:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Transpose uut (
		.Clk(Clk), 
		.Reset(Reset), 
		.X(X), 
		.Y(Y)
	);

	integer mcd1;
	
	always #20 Clk = ~Clk;
	
	always @ (posedge Clk) begin
		$fwrite(mcd1,"%d \n", $signed(Y));
	end

	initial begin
		mcd1 = $fopen("y_transpose.txt");
		Clk = 0;
		Reset = 1;
		X = 0;

		#40; Reset = 0;
		
		#40; X = 15'b01_0000000000000;
		#40; X = 15'b01_0000000101011;
		#40; X = 15'b00_1111100100010;
		#40; X = 15'b00_1110011110110;
		#40; X = 15'b00_1100111000011;
		#40; X = 15'b00_1010110110010;
		#40; X = 15'b00_1000011110000;
		#40; X = 15'b00_0101110110110;
		#40; X = 15'b00_0011000111110;
		#40; X = 15'b00_0000011000100;
		#40; X = 15'b11_1101110000111;
		#40; X = 15'b11_1011011000001;
		#40; X = 15'b11_1001010101001;
		#40; X = 15'b11_0111101101110;
		#40; X = 15'b11_0110100110111;
		#40; X = 15'b11_0110000100001;
		#40; X = 15'b11_0110000111110;
		#40; X = 15'b11_0110110010101;
		#40; X = 15'b11_1000000011110;
		#40; X = 15'b11_1001111000111;
		#40; X = 15'b11_1100001110101;
		#40; X = 15'b11_1110111111110;
		#40; X = 15'b00_0010000110100;
		#40; X = 15'b00_0101011100000;
		#40; X = 15'b00_1000111000111;
		#40; X = 15'b00_1100010101011;
		#40; X = 15'b00_1111101001110;
		#40; X = 15'b01_0010101110111;
		#40; X = 15'b01_0101011101101;
		#40; X = 15'b01_0111110000010;
		#40; X = 15'b01_1001100001101;
		#40; X = 15'b01_1010101110011;
		#40; X = 15'b01_1011010100000;
		#40; X = 15'b01_1011010001111;
		#40; X = 15'b01_1010101000110;
		#40; X = 15'b01_1001011010110;
		#40; X = 15'b01_0111101011101;
		#40; X = 15'b01_0101100000001;
		#40; X = 15'b01_0010111110010;
		#40; X = 15'b01_0000001100111;
		#40; X = 15'b00_1101010011011;
		#40; X = 15'b00_1010011001010;
		#40; X = 15'b00_0111100110011;
		#40; X = 15'b00_0101000010000;
		#40; X = 15'b00_0010110011000;
		#40; X = 15'b00_0000111111001;
		#40; X = 15'b11_1111101011101;
		#40; X = 15'b11_1110111011110;
		#40; X = 15'b11_1110110010000;
		#40; X = 15'b11_1111001111000;
		#40; X = 15'b00_0000010010000;
		#40; X = 15'b00_0001111000111;
		#40; X = 15'b00_0011111111110;
		#40; X = 15'b00_0110100010000;
		#40; X = 15'b00_1001011001011;
		#40; X = 15'b00_1100011111010;
		#40; X = 15'b00_1111101100010;
		#40; X = 15'b01_0010111000101;
		#40; X = 15'b01_0101111100110;
		#40; X = 15'b01_1000110001001;
		#40; X = 15'b01_1011001111001;
		#40; X = 15'b01_1101010000101;
		#40; X = 15'b01_1110110000110;
		#40; X = 15'b01_1111101100000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		#40; X = 15'b00_0000000000000;
		
		#80 $fclose(mcd1);
		#80 $finish;
	end
      
endmodule
