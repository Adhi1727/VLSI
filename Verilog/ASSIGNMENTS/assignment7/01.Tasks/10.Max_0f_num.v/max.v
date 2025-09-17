module max;
reg [7:0] a,b,c,d;
reg [7:0] max;

	task max_of_four;
	input [7:0] w,x,y,z;
	output [7:0] m;
	begin
	   m=w;
	   if(x>m)m=x;
	   if(y>m)m=y;
	   if(z>m)m=z;
	   
	end
	endtask

	initial begin
	a=8'd15;b=8'd25;c=8'd35;d=8'd55;
	max_of_four(a,b,c,d,max);
	$display("inputs:%b,%b,%b,%b",a,b,c,d);
	$display("max of num:%0d",max);
	end
endmodule
