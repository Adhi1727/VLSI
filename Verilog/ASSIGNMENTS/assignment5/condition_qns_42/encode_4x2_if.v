module encode_4x2_if(
input wire [3:0]  din,
output reg [1:0] y
);


	always @(*) begin
	  if(din[3]==1)
		y=2'b11;
	  else if(din[2]==1)
		y=2'b10;
	  else if(din[1]==1)
		y=2'b01;
	  else if(din[0]==1)
		y=2'b00;
	  else
		y=2'b00;
	end
endmodule
