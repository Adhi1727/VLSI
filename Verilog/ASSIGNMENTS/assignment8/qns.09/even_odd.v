module even_odd(
input clk,
input rst,
input in,
output reg odd0,odd1,even0,even1
);

parameter s0 = 0;
parameter s1 = 1;
parameter s2 = 2;
parameter s3 = 3;

reg [1:0] state , next_state;

always @(in or state) begin
	case(state)
	s0:begin
		if(in)
			next_state = s1;
		else
			next_state = s2;
	end
	s1:begin
		if(in)
			next_state = s0;
		else
			next_state = s3;
	end
	s2:begin
		if(in)
			next_state = s3;
		else 
			next_state = s0;
	end
	s3:begin
		if(in)
			next_state = s2;
		else 
			next_state = s1;
	end
	default: next_state = s0;
	endcase
end

always @(state) begin
	case(state)
		s0:begin
			even0=1;even1=1;odd0=0;odd1=0;
		end
		s1:begin
			even0=1;even1=0;odd0=0;odd1=1;
		end
		s2:begin
			even0=0;even1=1;odd0=1;odd1=0;
		end
		s3:begin
			even0=0;even1=0;odd0=1;odd1=1;
		end
		default: begin
			even0=1;even1=1;odd0=0;odd1=0;
		end

	endcase
end

always @(posedge clk or posedge rst) begin
	if(rst)
		state <= s0;
	else
		state <= next_state;
end

endmodule





