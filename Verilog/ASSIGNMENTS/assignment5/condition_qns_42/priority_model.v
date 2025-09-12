module priority_module(
input wire req1,req2,req3 ,
output reg [1:0] grant
);

	always @(*) begin
	   if(req1==1)
		grant=2'b01;
	   else if(req2==1)
		grant=2'b10;
	   else if(req3==1)
		grant=2'b11;
	   else
		grant=2'b00;
	end
endmodule
