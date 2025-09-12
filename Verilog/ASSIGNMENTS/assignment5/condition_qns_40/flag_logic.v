module flag_logic(
input wire f1,f2,f3 ,
output reg [2:0] out
);

	always @(*) begin
		if(f1)
	          out=3'b001;
		else if(f2)
		  out=3'b010;
		else if(f3)
		  out=3'b100;
		else
		  out=3'b000;
	end
endmodule
