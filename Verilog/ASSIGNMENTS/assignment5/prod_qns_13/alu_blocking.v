module alu_blocking(
input [3:0] a,b ,
input [2:0] sel ,
output reg[3:0] result 
);

	always @(*) begin
	if (sel == 3'b000) result= a+b;
	else if (sel == 3'b001) result = a - b; 
        else if (sel == 3'b010) result = a & b; 
        else if (sel == 3'b011) result = a | b; 
        else if (sel == 3'b100) result = a ^ b; 
        else result = 5'b00000; 
	end
endmodule
