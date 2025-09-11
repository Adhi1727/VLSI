module nb_simple;
reg clk;
reg a,b;

	initial begin
		clk=0;
	forever #5 clk=~clk;
	end

	initial begin
	a=0;b=1;	
	$monitor("time=%0t,clk=%b,a=%b,b=%b",$time,clk,a,b);
	#20 $finish;
	end

	 always @(posedge clk) begin
		a <= b;
		b <= a;
	end
endmodule
