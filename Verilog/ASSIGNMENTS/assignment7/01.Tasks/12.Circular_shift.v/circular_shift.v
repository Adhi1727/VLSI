module circular_shift;
reg[7:0] data;

	task left_circular_shift;
	inout [7:0] val;
	begin
		val ={val[6:0],val[7]};
	end 
	endtask

	initial begin
	   data=8'b11010101;
	$display("initial value=%b",data);

	left_circular_shift(data);
	$display("after 1 shift=%b",data);

        left_circular_shift(data);
        $display("after 2 shift=%b",data);
	
        left_circular_shift(data);
        $display("after 3 shift=%b",data);	
	end
endmodule
