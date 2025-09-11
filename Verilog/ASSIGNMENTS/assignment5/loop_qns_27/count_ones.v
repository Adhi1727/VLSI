module count_ones;
reg [3:0] vec;
reg [2:0] count;
integer i;

	initial begin
	vec=4'b1011;
	count=0;
	i=0;


	while (i<4) begin
	    if(vec[i]==1)
	        count=count+1;
	i=i+1;
	end
 
	$display("vector=%b,number of 1=%0d",vec,count);
	$finish;
	end
endmodule
