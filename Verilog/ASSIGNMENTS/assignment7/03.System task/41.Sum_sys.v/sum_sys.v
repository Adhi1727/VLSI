module sum_sys;
reg [7:0] a,b;
reg [8:0] sum;

initial begin
	a=8'd30;
	b=8'd40;

	sum=a+b;

	$display("a=%0d,b=%0d,sum=%0d",a,b,sum);
end
endmodule
