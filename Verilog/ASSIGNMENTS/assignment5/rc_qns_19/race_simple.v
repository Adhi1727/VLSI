module race_simple;
reg q,clk;

	initial begin
	   clk=0;
	forever #5 clk=~clk;
	end

	 always @(posedge clk) begin
	      q=1;
	 end
 

	always @(posedge clk) begin
	      q=0;
	end


	initial begin
	$monitor("time=%0t,clk=%b,q=%b",$time,clk,q);
	#100 $finish;
	end
endmodule 
