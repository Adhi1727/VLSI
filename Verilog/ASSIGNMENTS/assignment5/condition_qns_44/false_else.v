module false_else(
input in1,in2,in3 ,
output reg [1:0] out
);

	always @(*) begin
	   if(in1==1)
		out=2'b11;
	   else if(in2==1)
		out=2'b10;
	   else if(in3==1)
		out=2'b01;
	   
	end
endmodule

