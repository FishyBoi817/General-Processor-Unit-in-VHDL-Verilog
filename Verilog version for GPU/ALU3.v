module ALU3 (
    input wire clk,
    input wire [7:0] A, B,
    input wire [15:0] OpDec,
    input wire [3:0] student_id,
    output reg neg,
    output reg [3:0] RL, RH,
    output reg [3:0] Ans
);

    reg [3:0] result;

    always @(*) begin

        case (OpDec)
            16'b0000000000000001: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 1st student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            16'b0000000000000010: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 2nd student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            16'b0000000000000100: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 3rd student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 			
			result <= 4'b0000;
            end
            16'b0000000000001000: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 4th student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            16'b0000000000010000: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 5th student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            16'b0000000000100000: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 6th student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            16'b0000000001000000: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 7th student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
					 
            end
            16'b0000000010000000: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 8th student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            16'b0000000100000000: begin
		if(A[3:0] == student_id) // compare A upper 4-bits with 9th student_id digit
			result <= 4'b0001;
		else if (A[7:4] == student_id)
			result <= 4'b0001;
		else 
			result <= 4'b0000;
            end
            default: begin
                result <= 8'b0; // Default value
                neg <= 0;
            end
        endcase
		  
		  Ans <= result;
    end
        


endmodule
