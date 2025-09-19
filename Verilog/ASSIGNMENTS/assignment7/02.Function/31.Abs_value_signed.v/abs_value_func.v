module abs_value_func;


	function automatic integer abs_value;
	input integer x;
	begin
	 if(x<0)
	    abs_value = -x;
	 else
	    abs_value = x;
	end
	endfunction

	integer a,result;

	initial begin
	a=-15;
	result= abs_value(a);
	$display("input(%0d) = %0d",a,result);

	a=35;
        result= abs_value(a);
        $display("input(%0d) = %0d",a,result); 

	a=10;
        result= abs_value(a);
        $display("input(%0d) = %0d",a,result);
	end
endmodule
