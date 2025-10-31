module two_one(
input clk,
input rst,
input in,
output reg out
);

parameter s0 = 3'b000;
parameter s1 = 3'b001;
parameter s2 = 3'b010;
parameter s3 = 3'b011;
parameter s4 = 3'b100;
parameter s5 = 3'b101;
parameter s6 = 3'b110;
parameter s7 = 3'b111;

reg [2:0] state,next_state;
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
			out = 0;
		end

		s1:begin
			if(in)begin
                                next_state = s3;
			end
			else begin
                                next_state = s2;
			end
                        out = 0;
                end

		s2:begin
			if(in) begin
                                next_state = s5;
			end
			else begin
                                next_state = s4;
			end
                        out = 0;
                end

		s3:begin
                        if(in)begin
                                next_state = s7;
			end
			else begin
                                next_state = s6;
			end
                        out = 1;
                end

		s4:begin
			if(in) begin
                                next_state = s1;
			end
			else begin
                                next_state = s0;
			end
                        out = 0;
                end

		s5:begin
			if(in) begin
                                next_state = s3;
			end
			else begin
                                next_state = s2;
			end
                        out = 1;
                end

		s6:begin
			if(in)begin
                                next_state = s5;
		           end
			   else begin
                                next_state = s4;
			end
                        out = 1;
                end

		s7:begin
			if(in) begin
                                next_state = s7;
			end
			else begin
                                next_state = s6;
			end
                        out = 1;
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

endmodule

