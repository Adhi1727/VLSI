module counter_4bit_sync(
input wire clk,
input wire rst,
output reg[3:0] q
);

	always @(posedge clk) begin
	    if(rst)
	      q = 4'b0000;
	    else
	      q = q + 1;
	end
endmodule
