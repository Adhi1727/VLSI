module tb_clk;
reg clk;

	initial begin
	 clk=0;
	end

	always #5 clk=~clk;

	initial begin
	$dumpfile("clk.vcd");
	$dumpvars(0,tb_clk);

	$display("time | clk");
	$monitor("%0t | %b",$time,clk);

	#50;
       	$finish;
	end
endmodule
