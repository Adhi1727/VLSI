module tb_parallel_demo;
wire a;
wire b;

parallel_demo uut(.a(a),.b(b));

	initial begin
	$monitor("time=%4t | a=%b | b=%b",$time,a,b);
	#100 $finish;
	end
endmodule
