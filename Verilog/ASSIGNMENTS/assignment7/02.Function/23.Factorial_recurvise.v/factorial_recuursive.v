module factorial_recurvise;


	function automatic integer fact(input integer n);
		if(n<=1)
		    fact=1;
		else
		    fact=n*fact(n-1);
	endfunction

	integer num,result;

	initial begin
	num=5;
	result=fact(num);
	$display("factorial of %0d = %0d",num,result);
	end
endmodule
