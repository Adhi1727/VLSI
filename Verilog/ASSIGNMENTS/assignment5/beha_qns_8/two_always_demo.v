module two_always_demo(
output reg a,b
);

	initial  a=0;
	always begin
		#5 a= ~a;
	end

	initial  b=1;
	always begin
		#10 b= ~b;
	end

	initial begin
	$monitor("time=%4t , a=%b , b=%b",$time,a,b);
	#20 $finish;
	end
endmodule
