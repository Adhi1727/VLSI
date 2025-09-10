module multi_init_demo(
	output reg a,b
);

	initial begin
		a=0;
		#5 a=1;
	end

	initial begin
		b=1;
		#10 b=0;
	end

	initial begin
	$monitor("time=%4t , a=%b , b=%b",$time,a,b);
	#20 $finish;
	end
endmodule
