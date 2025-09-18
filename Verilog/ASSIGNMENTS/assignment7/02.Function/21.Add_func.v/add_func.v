module add_func;
reg [7:0] a,b;
reg cin;
wire [9:0] sum;

	assign sum = add_with_carry(a,b,cin);

	initial begin
	a=8'b11010101;
	b=8'b11110000;
	cin=1'b1;

	#1;
	$display("time=%0t,a=%b,b=%b,cin=%b --> sum=%b",$time,a,b,cin,sum);
	end

	function [9:0] add_with_carry;
	input [7:0] x,y;
	input carry_in;
	begin
	add_with_carry = x+y+carry_in;
	end
	endfunction
endmodule
