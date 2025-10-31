module state2_in2(
input clk,
input rst,
input j,k,
output reg out
);

parameter OFF = 0;
parameter ON = 1;

reg [1:0] state , next_state;

always @(*) begin
	case(state)
		OFF:begin
			if (j==1) begin next_state = ON; end
			else begin next_state = OFF; end
			out = 0;
		end
		ON:begin
			if (k==1) begin next_state = OFF; end
			else begin next_state = ON; end
			out = 1;
		end
		default: next_state = OFF;
	endcase
end

always @(posedge clk or posedge rst) begin
	if(rst)
		state <= 0;
	else 
		state <= next_state;
end

endmodule



			
 
