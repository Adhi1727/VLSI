module tb_seq_div5_dec;
reg clk,rst,x;
wire z;

seq_div5_dec uut(.clk(clk),.rst(rst),.x(x),.z(z));

	initial clk=0;
	always #2 clk=~clk;

	initial begin
	   
	#4 rst=1;
	#4 rst=0;

	#4 x=1;
	#4 x=0;
	#4 x=1;
	#4 x=0;
	#10;
	$finish;
	end

	initial begin
	$dumpfile("dump.vcd");
	$dumpvars(0);

	$monitor("time=%0t,rst=%b,x=%b,z=%b,state=%b,nextstate=%b",$time,rst,x,z,uut.state,uut.next_state);
	end
endmodule
