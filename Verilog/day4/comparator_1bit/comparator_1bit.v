module comparator_1bit(
input [1:0] a,
output [2:0] y
);

	assign y[2:0]= (a==2'b00)?3'b010:
(a==2'b01)?3'b100:
(a==2'b10)?3'b001:
           3'b010;
endmodule
	    
