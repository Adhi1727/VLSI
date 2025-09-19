module sig_module;
reg clk,data;

	initial begin
	clk=0;
	data=0;
	forever #5 clk=~clk;
	end

	initial begin
	#12 data=1;
	#18 data=0;
	#25 data=1;
	#30 data=0;
        end

	initial begin
	$monitor("time=%0t;clk=%b,data=%b",$time,clk,data);
	end

	initial begin
	#100 $finish;
	end
endmodule
