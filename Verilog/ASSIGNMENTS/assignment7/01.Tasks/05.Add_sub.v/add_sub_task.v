module add_sub_task;
reg [3:0] a,b;
wire [4:0]sum;
wire [4:0]sub;

reg [4:0] add_out;
reg [4:0] sub_out;

initial begin
	a=4'b1011;
	b=4'b1100;

	add_sub(a,b,add_out,sub_out);
	$display("a=%b,b=%b --> sum=%b",a,b,add_out);
	$display("a=%b,b=%b --> sub=%b",a,b,sub_out);
end

	task add_sub;
	input [3:0] x,y;
	output [4:0] add_out;
	output [4:0] sub_out;

	begin
		add_out = x + y;
		sub_out = x - y;
	end
        endtask
endmodule
