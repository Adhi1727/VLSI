module min_func;
reg [7:0] a,b;
reg [7:0] result;

	function [7:0] min_of_num;
	input [7:0] x,y;
	begin
	  if(x<y)
	     min_of_num=x;
	  else
	     min_of_num=y;
	end
	endfunction

	initial begin
	
	a=8'd13;
	b=8'd25;
	result= min_of_num(a,b);
	$display("min of %0d and %0d = %0d",a,b,result);
 
	a=8'd40;
	b=8'd50;
	result= min_of_num(a,b);
	$display("min of %0d and %0d = %0d",a,b,result);
	
	end
endmodule
