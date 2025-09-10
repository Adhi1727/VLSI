module initial_vs_always;
reg a,b;
	initial begin
	$monitor("time=%4t, a=%b, b=%b",$time,a,b);
	a=1;b=1;
	#10 a=~a;
	#100 $finish;
	end
	always #5 b=~b;
endmodule

