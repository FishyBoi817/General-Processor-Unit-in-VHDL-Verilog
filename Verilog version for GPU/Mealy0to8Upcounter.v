module Mealy0to8Upcounter(
	
	input wire clk, data_in, reset,
	output reg [3:0] student_id, currentstate);
	
	/* Declaring state value     current state (dec) */
	parameter s0 = 4'b0000; //         0                   
	parameter s1 = 4'b0001; //         1                   
	parameter s2 = 4'b0010; //         2                   
	parameter s3 = 4'b0011; //         3                   
	parameter s4 = 4'b0100; //         4                   
	parameter s5 = 4'b0101; //         5                   
	parameter s6 = 4'b0110; //         6                   
	parameter s7 = 4'b0111; //         7                   
	parameter s8 = 4'b1000; //         8                   
	
	/* Declaring 4-bit registers for tracking states */
	reg [3:0] pr_state, next_state;
	
	/* Ensures Mealy FSM will work when reset == 0 */
	always @(posedge clk) begin
		if (reset == 0) 
			pr_state <= next_state;
		else 
			pr_state <= s0;
	end
	
	/* State Transition Logic */
	always @(*) begin
		case(pr_state) 
			 s0: begin
				if(data_in == 1) begin
					next_state = s1;
					student_id = 4'b0101;
				end
				else begin
					next_state = s0;
					student_id = 4'b1000;
				end
				currentstate = s0;
			 end
			 s1: begin
				if(data_in == 1) begin
					next_state = s2;
					student_id = 4'b0000;
				end
				else begin
					next_state = s1;
					student_id = 4'b0101;
				end
				currentstate = s1;
			 end
			 s2: begin
				if(data_in == 1) begin
					next_state = s3;
					student_id = 4'b0001;
				end
				else begin
					next_state = s2;
					student_id = 4'b0000;
				end
				currentstate = s2;
			 end
			 s3: begin
				  if(data_in == 1) begin
						next_state = s4;
						student_id = 4'b0001;
				  end
				  else begin
						next_state = s3;
						student_id = 4'b0001;
				  end
				  currentstate = s3;
			 end
			 s4: begin
				  if(data_in == 1) begin
						next_state = s5;
						student_id = 4'b0111;
				  end
				  else begin
						next_state = s4;
						student_id = 4'b0001;
				  end
				  currentstate = s4;
			 end

			 s5: begin
				  if(data_in == 1) begin
						next_state = s6;
						student_id = 4'b0000;
				  end
				  else begin
						next_state = s5;
						student_id = 4'b0111;
				  end
				  currentstate = s5;
			 end
			 s6: begin
				  if(data_in == 1) begin
						next_state = s7;
						student_id = 4'b0001;
				  end
				  else begin
						next_state = s6;
						student_id = 4'b0000;
				  end
				  currentstate = s6;
			 end
			 s7: begin
				  if(data_in == 1) begin
						next_state = s8;
						student_id = 4'b0011;
				  end
				  else begin
						next_state = s7;
						student_id = 4'b0001;
				  end
				  currentstate = s7;
          		 end
			 s8: begin
				  if(data_in == 1) begin
						next_state = s0;
						student_id = 4'b1000;
				  end
				  else begin
						next_state = s8;
						student_id = 4'b0011;
				  end
				  currentstate = s8;
          		end
			default: next_state = s0;
		endcase
 end
	 
endmodule
