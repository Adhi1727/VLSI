module multi4(
input clk,
input rst,
input in,
output reg out
);

parameter s0 = 0;
parameter s1 = 1;
parameter s2 = 2;
parameter s3 = 3;

reg [1:0] state , next_state;

always @(*) begin
	case(state)
		s0:begin
			if(in)
				next_state = s1;
			else 
				next_state = s0;
		end
		s1:begin
			if(in)
				next_state = s2;
			else
				next_state = s1;
		end
		s2:begin
			if(in)
				next_state = s3;
			else 
				next_state = s2;
		end
		s3:begin
			if(in)
				next_state = s0;
			else 
				next_state = s3;
		end
		default: next_state = s0;
	endcase
end

always @(posedge clk or posedge rst) begin
	if(rst)
		state <= s0;
	else 
		state <= next_state;
end

always @(*) begin
		if (state == s0)
			out = 1'b1;
		else
 			out = 1'b0;
end

endmodule 

		
