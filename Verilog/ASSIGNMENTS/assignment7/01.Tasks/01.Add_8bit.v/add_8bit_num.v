module add_8bit_num;
reg [7:0] a,b;
reg cin;
wire [8:0] sum;

reg [8:0] result;

initial begin
	a=8'b00111100;
	b=8'b01101010;
	cin=1'b1;
 	
	add_with_carry(a,b,cin,result);
	$display("a=%b,b=%b,cin=%b --> sum=%b",a,b,cin,result);
	end


	task add_with_carry;
	input [7:0] x,y;
	input       carry_in;
	output [8:0] result;

	begin
		result = x + y + carry_in;
	end
	endtask
endmodule
