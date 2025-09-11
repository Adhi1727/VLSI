module forever_simple;
reg clk;

	initial begin : clk_gen
	   clk=0;
	forever #5 clk=~clk;
	end


	initial begin
	$dumpfile("forever_simple.vcd");
	$dumpvars(0,forever_simple);


	#50 disable clk_gen;
	$display("end at time=%0t",$time);
	$finish;
	end
endmodule
