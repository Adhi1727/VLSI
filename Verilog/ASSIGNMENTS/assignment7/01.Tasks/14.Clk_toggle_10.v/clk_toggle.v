module clk_toggle;
reg clk;


	task toggle_clock;
	inout clk;
	integer i;

	begin
		clk=0;
	for(i=0;i<10;i=i+1) begin
	   #5 clk=~clk;
	$display("time=%0t,clk=%b",$time,clk);
	end
	end
	endtask

	initial begin
	toggle_clock(clk);
	end
endmodule
	
