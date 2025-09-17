module sub_8bit_task;
reg [7:0] a,b;
wire [8:0] sub;

reg [8:0] result;

initial begin
	a=8'b10101010;
	b=8'b00110001;

	sub_8bit(a,b,result);
	$display("a=%b,b=%b --> sub=%b",a,b,result);
end

	task sub_8bit;
	input [7:0] x,y;
	output [8:0] result;
	
	begin
		result = x - y;
	end
	endtask
endmodule
