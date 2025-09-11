module concurrent;
reg a,b,clk;
	always @(posedge clk) begin
		a=0;
		b=1;
		#10 a <= b;
		    b <= a;
	end

	initial begin
		clk=0;
	forever #5 clk=~clk;
	end

	initial begin
	$monitor("time=%0t,clk=%b,a=%b,b=%b",$time,clk,a,b);
	#100 $finish;
	end
endmodule
