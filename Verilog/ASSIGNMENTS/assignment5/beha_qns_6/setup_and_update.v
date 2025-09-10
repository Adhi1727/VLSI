module setup_and_update(
	output reg count
);

	initial begin
		count=0;
	end

	always begin
		#5 count= count+1;
	end

	initial begin
	$monitor("time=%4t , count=%b",$time,count);
	#100 $finish;
	end	
endmodule
