module mux_4x1_if(
input wire a,b,c,d,
input wire [1:0] sel,
output reg y
);

	
	always @(*) begin
	   if(sel==2'b00)
	       y=a;
	   else if(sel==2'b01)
		y=b;
	   else if(sel==2'b10)
		y=c;
	   else 
		y=d;
	end
endmodule


