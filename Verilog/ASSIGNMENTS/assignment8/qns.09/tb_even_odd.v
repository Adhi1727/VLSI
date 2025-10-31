module tb_even_odd;
reg clk,rst,in;
wire odd0,odd1,even0,even1;

even_odd uut(.clk(clk),.rst(rst),.in(in),.odd0(odd0),.odd1(odd1),.even0(even0),.even1(even1));

always #5 clk =~clk;

initial begin
		$dumpfile("even_odd.vcd");
		$dumpvars;
		$monitor("time=%0t rst=%b | clk=%b| in=%b | even0=%b | even1=%b | odd0=%b | odd1=%b",$time,rst,clk,in,even0,even1,odd0,odd1);
	        clk=0;		
		rst = 1;
		in = 0;
		#10;
		rst = 0;
		in = 1;
		#10 in = 0;
		#10 in = 1;
		#10 in = 1;
		#10 in = 0;
		#10 in = 0;
		#10 in = 1;

		#20 $finish;
		
	end
endmodule
