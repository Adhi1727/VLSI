module tb_seq_dec1001_over;
reg clk,rst,in;
wire z;

seq_dec1001_over uut(.clk(clk),.rst(rst),.in(in),.z(z));

initial clk=0;
always #5 clk=~clk;

	initial begin
	#1 rst=0;
	#2 rst=1;

	#3 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#20;
	$finish;
	end

	initial begin
	$dumpfile("seq_sec.vcd");
	$dumpvars(0);

	$monitor("time=%0t,rst=%b,in=%b,z=%b",$time,rst,in,z);
	end
endmodule


