module function_example;
reg [3:0] a,b;
reg cin;
wire [4:0] sum;

assign sum = add_with_carry(a,b,cin);

	initial begin
		a=4'b0110;
		b=4'b0101;
		cin=1'b1;
	
	#1;
	$display("a=%b,b=%b,cin=%b-->sum=%b",a,b,cin,sum);
	end
	function [4:0] add_with_carry;
	  input [3:0] x,y;
	  input       carry_in;
	begin
	    add_with_carry = x + y + carry_in;
	end
	endfunction
endmodule
