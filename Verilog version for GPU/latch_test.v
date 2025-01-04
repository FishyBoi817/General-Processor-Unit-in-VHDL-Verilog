module latch_test(

	input wire [7:0] A,
	input wire resetA,
	input wire clk,
	output reg [7:0] Q);

	always @(*) begin
	
		if (resetA == 0) //Copy A into Q when reset is 0
			Q <=  A;          
	                    
		else                
			Q <=  8'b00000000;
	end
	
endmodule