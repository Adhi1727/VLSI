module square_wave;
reg clk;
 	
	initial begin
	   clk=0;
	forever begin
	   #5 clk=~clk;
	end
      end


	initial begin
	$dumpfile("square_wave.vcd");
	$dumpvars(0,square_wave);
	end


	initial begin
	$monitor("time=%0t,clk=%b",$time,clk);
	#40 $finish;
	end
endmodule
