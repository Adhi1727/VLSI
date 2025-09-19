module num_of_ones;
reg [7:0] a,b;
reg result;

	function ones_cacl;
	input [7:0] x,y;
	begin
	if(x==y)
	   ones_cacl=1;
	else
	   ones_cacl=0;
	end
	endfunction

	initial begin
	a=8'd19;
	b=8'd19;	
	result= ones_cacl(a,b);
	$display("a=%0d,b=%0d,equal=%0d",a,b,result);

	a=8'd20;
	a=8'd30;
	result= ones_cacl(a,b);                                                                                                 $display("a=%0d,b=%0d,equal=%0d",a,b,result);
	end
endmodule
