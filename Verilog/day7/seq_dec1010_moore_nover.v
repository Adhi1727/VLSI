module seq_dec1010_moore_nover(
input clk, 
input rst, 
input in,
output reg z
);

parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;

reg [2:0] state,next_state;

	always @(posedge clk or posedge rst) begin
		if(rst) begin 
			state <= s0;
		end
		else 
			state <= next_state;
		end
  
	always @(state or in) begin
		case(state)
			s0: begin
				if(in==1)
					next_state = s1;
			        else       
					next_state = s0;
				end
			s1: begin
				if(in==1) 
					next_state = s1;
				else
					next_state = s2;
				end
			s2: begin
				if(in==1) 
					next_state = s3;
				else
					next_state = s0;
				end
			s3: begin
				if(in==1) 
					next_state = s1;
				else       
					next_state = s4;
				end
			s4: begin
                                if(in==1)
                                        next_state = s1;
                                else
                                        next_state = s0;
                                end
			default: next_state = s0;
		endcase
	end

	always@(state) begin
		case(state)
			s0 : z = 0;
			s1 : z = 0;
			s2 : z = 0;
			s3 : z = 0;
			s4 : z = 1;
			default : z = 0;
		endcase
	end
	
endmodule
