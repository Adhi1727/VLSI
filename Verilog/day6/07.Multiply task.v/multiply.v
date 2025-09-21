module multiply;
reg [7:0] a,b;

	task multiply;
	input [7:0] x,y;
	reg [15:0] product ;
	begin
	  product=x*y;
	$display("time=%0t| %0d*%0d = %0d",$time,x,y,product);
	end
	endtask

	initial begin
	a=8'd15;
	b=8'd5;
	multiply(a,b);

	a=8'd6;
	b=8'd12;
	multiply(a,b);

	$finish;
	end
	endmodule

