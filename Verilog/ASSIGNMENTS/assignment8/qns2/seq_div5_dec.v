module seq_div5_dec(
input clk,rst,x,
output reg z
);

parameter s0=3'b000;
parameter s1=3'b001;
parameter s2=3'b010;
parameter s3=3'b011;
parameter s4=3'b100;

reg [2:0] state,next_state;

	always @(posedge clk) begin
		if(rst) begin
		    state <= s0;
		end
		else state <= next_state;
	end

always @(state or x) begin
	case(state)

	s0: next_state = (x?s1:s0);
	s1: next_state = (x?s3:s2);
	s2: next_state = (x?s0:s4);
	s3: next_state = (x?s2:s1);
	s4: next_state = (x?s4:s3);
	default: next_state = s0;
	endcase
end

always @(*) begin
	z = (state==s0);
end
endmodule

