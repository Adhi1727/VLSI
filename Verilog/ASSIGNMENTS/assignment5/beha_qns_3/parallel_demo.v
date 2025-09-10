module parallel_demo(
	output reg a,
	output reg b
);

	initial a=0;
	always begin
		#5 a=~a;
	end 

	initial b=1;
	always begin
		#7 b=~b;
	end
endmodule
