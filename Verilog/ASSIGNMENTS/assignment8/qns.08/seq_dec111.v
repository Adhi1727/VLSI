module seq_dec111(
input clk,
input rst,
input in,
output reg out 
);

parameter s0 = 0;
parameter s1 = 1;
parameter s2 = 2;

reg [1:0] state,next_state;

always @ (in or state)
begin
	case(state)
		s0:begin
			if(in)begin
				next_state = s1;
			end
			else begin
				next_state = s0;
			end
		end

		s1:begin
			if(in)begin
                                next_state = s2;
			end
			else begin
                                next_state = s0;
			end
                end

		s2:begin
			if(in) begin
                                next_state = s2;
			end
			else begin
                                next_state = s0;
			end
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
	out = ( (state==s2) & (in==1) ) ? 1 : 0;
end

endmodule

