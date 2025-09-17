module factorial_loop;
reg [7:0] num;
reg [31:0] fact;

	task cacl_fact;
	input [7:0] n;
	output [31:0] f;
	integer i;
	begin
	    f=1;
	   for (i=1;i<=n;i=i+1)
		f=f*i;
	end
	endtask

	initial begin
	   num=5;
	cacl_fact(num,fact);
	$monitor("factorial of %0d = %0d",num,fact);
	end
endmodule
	
