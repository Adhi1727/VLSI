module prime_fuct;

	function automatic integer prime_is(input integer n);
	integer i;
	begin
	if(n<=1)
	   prime_is=0;
	else begin
	   prime_is=1;
		for(i=2;i<n;i=i+1) begin
		   if(n%i==0)
		     prime_is=0;
        	end
	end
	end
	endfunction

	integer num;

	initial begin
	num=7;
	$display("%d --> %0d",num,prime_is(num));

	num=10;
	$display("%d --> %0d",num,prime_is(num));
	end
endmodule

