module ALU1 (
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
                result <= A + B; // Addition
                neg <= 0;
            end
            16'b0000000000000010: begin
                if (A < B) begin
			result <= B - A;
			neg <= 1;
		end
		else begin
			result <= A - B;
			neg <= 0;
		end
            end
            16'b0000000000000100: begin
                result <= ~A; // NOT A
                neg <= 0;
            end
            16'b0000000000001000: begin
                result <= ~(A & B); // NAND
                neg <= 0;
            end
            16'b0000000000010000: begin
                result <= ~(A | B); // NOR
                neg <= 0;
            end
            16'b0000000000100000: begin
                result <= A & B; // AND
                neg <= 0;
            end
            16'b0000000001000000: begin
                result <= A | B; // OR
                neg <= 0;
            end
            16'b0000000010000000: begin
                result <= A ^ B; // XOR
                neg <= 0;
            end
            16'b0000000100000000: begin
                result <= ~(A ^ B); // XNOR
                neg <= 0;
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
