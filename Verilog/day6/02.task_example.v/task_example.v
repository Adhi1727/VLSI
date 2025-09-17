module task_example;
reg [3:0] a,b;
reg cin;
wire [4:0] sum;

reg [4:0] result;

	initial begin
	  a=4'b1100;
	  b=4'b1011;
	  cin=1'b1;

	add_with_carry(a,b,cin,result);

	$display("a=%b,b=%b,cin=%b --> sum=%b",a,b,cin,result);
	end

	task add_with_carry;
		input [3:0] x,y;
		input       carry_in;
		output [4:0] result;

	begin
		result = x + y + carry_in;
	end
	endtask
endmodule
