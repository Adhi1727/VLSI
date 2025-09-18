module add_signed_task;
reg signed [7:0] a,b;
reg signed [8:0] result;

	task add_signed;
	input signed [7:0] x,y;
	output signed [8:0] sum;
	begin
		sum=x+y;
	end
	endtask

	initial begin
	   a = 50;
	   b = -30;
	add_signed(a,b,result);
	$display("a=%0d,b=%0d,sum=%0d",a,b,result);


	   a = -60;
	   b = -70;
	add_signed(a,b,result);
	$display("a=%0d,b=%0d,sum=%0d",a,b,result);

	$finish;
	end
endmodule
