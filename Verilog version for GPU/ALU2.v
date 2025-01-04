module ALU2 (
    input wire clk,
    input wire [7:0] A, B,
    input wire [15:0] OpDec,
    output reg neg,
    output reg [3:0] RL, RH
);

    reg [7:0] result;

    always @(*) begin

        case (OpDec)
            16'b0000000000000001: begin
					result [0] <= A[7]; //invert signficant bit
					result [1] <= A[6];
					result [2] <= A[5];
					result [3] <= A[4];
					result [4] <= A[3];
					result [5] <= A[2];
					result [6] <= A[1];
					result [7] <= A[0]; 
            end
            16'b0000000000000010: begin
					result <= (A << 4 | 8'b00001111); //shift A to the left, the remaining bits are 1's
            end
            16'b0000000000000100: begin
               result[7:4] <= ~ B[7:4]; //invert upper 4 bits of B
					result[3:0] <= B[3:0];
            end
            16'b0000000000001000: begin
					if (A > B) begin
						result <= B;
					end
					else result <= A;
            end
            16'b0000000000010000: begin
               result <= A + B + 8'b00000100; //add 4 to sum of A & B
            end
            16'b0000000000100000: begin
               result <= A + 8'b00000011; // add 3 to sum of A & B
            end
            16'b0000000001000000: begin
               result [0] <= B[0];
					result [1] <= A[1];
					result [2] <= B[2];
					result [3] <= A[3];
					result [4] <= B[4];
					result [5] <= A[5];
					result [6] <= B[6];
					result [7] <= A[7];
					 
            end
            16'b0000000010000000: begin
					result <= ~(A ^ B); // XNOR
            end
            16'b0000000100000000: begin
               result <= (B >> 3) | (B << (8-3));
            end
            default: begin
                result <= 8'b0; // Default value
                neg <= 0;
            end
        endcase
		  
		  RL <= result[3:0];
        RH <= result[7:4];
    end
        


endmodule
