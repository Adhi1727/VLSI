module tb_seq_dec1001_nover;
reg clk,rst,in;
wire z;

seq_dec1001_nover uut(.clk(clk),.rst(rst),.in(in),.z(z));

initial clk=0;
always #5 clk=~clk;

	initial begin
	in=0;
	#1 rst=0;
	#2 rst=1;

	#3 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#10 in=1;
	#10 in=1;
	#10 in=0;
	#10 in=0;
	#10 in=1;
	#10 in=0;
	#20;
	$finish;
	end

	initial begin
	$dumpfile("nonover.vcd");
	$dumpvars(0);

	$monitor("time=%0t,state=%b,nextstate=%b,rst=%b,in=%b,z=%b",$time,uut.state,uut.next_state,rst,in,z);
	end
endmodule

