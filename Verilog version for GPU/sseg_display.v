module sseg_display(

	input wire neg,
	input wire [3:0] bcd1, bcd2, bcd3,
	output reg [0:6] neg_leds, leds1, leds2, leds3);
	
	always @(neg or bcd1 or bcd2, bcd3) begin
		
		//display for negative sign
		if (neg == 1'b1) 
			neg_leds <= 7'b0000001; //"-"
		
		else
			neg_leds <= 7'b0000000; //" "
		
		//display for bcd1
		case (bcd1)            //abcdefg
			4'b0000 : leds1 <= 7'b1110110; //"N"
			4'b0001 : leds1 <= 7'b0110011; //"y"
			default : leds1 <= 7'b1001111; //"E" for error
		endcase
		
		//display for bcd2
		case (bcd2)            //abcdefg
			4'b0000 : leds2 <= 7'b1111110; // "0"
			4'b0001 : leds2 <= 7'b0110000; // "1"
			4'b0010 : leds2 <= 7'b1101101; // "2"
			4'b0011 : leds2 <= 7'b1111001; // "3"
			4'b0100 : leds2 <= 7'b0110011; // "4"
			4'b0101 : leds2 <= 7'b1011011; // "5"
			4'b0110 : leds2 <= 7'b1011111; // "6"
			4'b0111 : leds2 <= 7'b1110000; // "7"
			4'b1000 : leds2 <= 7'b1111111; // "8"
			4'b1001 : leds2 <= 7'b1110011; // "9"
			4'b1010 : leds2 <= 7'b1110110; // "A"
			4'b1011 : leds2 <= 7'b0011111; // "B"
			4'b1100 : leds2 <= 7'b0001101; // "C"
			4'b1101 : leds2 <= 7'b0111101; // "D"
			4'b1110 : leds2 <= 7'b1001111; // "E"
			4'b1111 : leds2 <= 7'b1000111; // "F"
			default : leds2 <= 7'b1001111; // "E" for error
		endcase
		
		//display for bcd3
		case (bcd3)            //abcdefg
			4'b0000 : leds3 <= 7'b1111110; // "0"
			4'b0001 : leds3 <= 7'b0110000; // "1"
			4'b0010 : leds3 <= 7'b1101101; // "2"
			4'b0011 : leds3 <= 7'b1111001; // "3"
			4'b0100 : leds3 <= 7'b0110011; // "4"
			4'b0101 : leds3 <= 7'b1011011; // "5"
			4'b0110 : leds3 <= 7'b1011111; // "6"
			4'b0111 : leds3 <= 7'b1110000; // "7"
			4'b1000 : leds3 <= 7'b1111111; // "8"
			4'b1001 : leds3 <= 7'b1110011; // "9"
			4'b1010 : leds3 <= 7'b1110110; // "A"
			4'b1011 : leds3 <= 7'b0011111; // "B"
			4'b1100 : leds3 <= 7'b0001101; // "C"
			4'b1101 : leds3 <= 7'b0111101; // "D"
			4'b1110 : leds3 <= 7'b1001111; // "E"
			4'b1111 : leds3 <= 7'b1000111; // "F"
			default : leds3 <= 7'b1001111; // "E" for error
		endcase
	end
endmodule
			
	
			
			
		