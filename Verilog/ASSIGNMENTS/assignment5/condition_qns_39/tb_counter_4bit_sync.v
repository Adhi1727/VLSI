module tb_counter_4bit_sync;
reg clk,rst;
wire [3:0] q;

counter_4bit_sync uut(.clk(clk),.rst(rst),.q(q));
	
	always #5 clk=~clk;

	initial begin
	$display(" time | rst clk | q ");
	$monitor("%4t | %b %b | %b",$time,rst,clk,q);
	clk=0;
	rst=1;#10;
	rst=0;#100;

	rst=1;#10;
	rst=0;#50;

	$finish;
	end
endmodule

