`timescale 1ns / 1ps

module Direct_Testbench;

	// Inputs
	reg Clk;
	reg Reset;
	reg [13:0] X;

	// Outputs
	wire [17:0] Y;

	// Instantiate the Unit Under Test (UUT)
	Direct uut (
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
		mcd1 = $fopen("y_direct.txt");
		Clk = 0;
		Reset = 1;
		X = 0;
		
		#40; Reset = 0;
		
		#40; X = 14'b01_000000000000;
		#40; X = 14'b01_000000010101;
		#40; X = 14'b00_111110010001;
		#40; X = 14'b00_111001111011;
		#40; X = 14'b00_110011100001;
		#40; X = 14'b00_101011011001;
		#40; X = 14'b00_100001111000;
		#40; X = 14'b00_010111011011;
		#40; X = 14'b00_001100011111;
		#40; X = 14'b00_000001100010;
		#40; X = 14'b11_110111000011;
		#40; X = 14'b11_101101100000;
		#40; X = 14'b11_100101010100;
		#40; X = 14'b11_011110110111;
		#40; X = 14'b11_011010011011;
		#40; X = 14'b11_011000010000;
		#40; X = 14'b11_011000011111;
		#40; X = 14'b11_011011001010;
		#40; X = 14'b11_100000001111;
		#40; X = 14'b11_100111100011;
		#40; X = 14'b11_110000111010;
		#40; X = 14'b11_111011111111;
		#40; X = 14'b00_001000011010;
		#40; X = 14'b00_010101110000;
		#40; X = 14'b00_100011100011;
		#40; X = 14'b00_110001010101;
		#40; X = 14'b00_111110100111;
		#40; X = 14'b01_001010111011;
		#40; X = 14'b01_010101110110;
		#40; X = 14'b01_011111000001;
		#40; X = 14'b01_100110000110;
		#40; X = 14'b01_101010111001;
		#40; X = 14'b01_101101010000;
		#40; X = 14'b01_101101000111;
		#40; X = 14'b01_101010100011;
		#40; X = 14'b01_100101101011;
		#40; X = 14'b01_011110101110;
		#40; X = 14'b01_010110000000;
		#40; X = 14'b01_001011111001;
		#40; X = 14'b01_000000110011;
		#40; X = 14'b00_110101001101;
		#40; X = 14'b00_101001100101;
		#40; X = 14'b00_011110011001;
		#40; X = 14'b00_010100001000;
		#40; X = 14'b00_001011001100;
		#40; X = 14'b00_000011111100;
		#40; X = 14'b11_111110101110;
		#40; X = 14'b11_111011101111;
		#40; X = 14'b11_111011001000;
		#40; X = 14'b11_111100111100;
		#40; X = 14'b00_000001001000;
		#40; X = 14'b00_000111100011;
		#40; X = 14'b00_001111111111;
		#40; X = 14'b00_011010001000;
		#40; X = 14'b00_100101100101;
		#40; X = 14'b00_110001111101;
		#40; X = 14'b00_111110110001;
		#40; X = 14'b01_001011100010;
		#40; X = 14'b01_010111110011;
		#40; X = 14'b01_100011000100;
		#40; X = 14'b01_101100111100;
		#40; X = 14'b01_110101000010;
		#40; X = 14'b01_111011000011;
		#40; X = 14'b01_111110110000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		#40; X = 14'b00_000000000000;
		
		#80 $fclose(mcd1);
		#80 $finish;
	end
      
endmodule

