module ones_cacl;
reg [7:0] num;
integer result;

	function automatic integer no_of_ones;
	input [7:0] x;
	integer i;
	begin
	  no_of_ones=0;
	  for(i=0;i<8;i=i+1) begin
	   if(x[i]==1'b1)
		no_of_ones= no_of_ones+1;
	  end
	end
	endfunction

	initial begin;
	num=8'b11001100;
	result = no_of_ones(num);
	$display("input=%b,ones=%0d",num,result);

	num=8'b11101101;
        result = no_of_ones(num);
        $display("input=%b,ones=%0d",num,result);  
	
	num=8'b11001100;
        result = no_of_ones(num);
        $display("input=%b,ones=%0d",num,result); 
	end
endmodule	

