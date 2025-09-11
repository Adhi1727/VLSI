module counter_repeat;
reg clk;
reg [2:0] count;

	initial begin
	    clk=0;
	forever #5 clk=~clk;
	end


	initial begin
	count=0;
	
	repeat (8) begin
	@(posedge clk) ;
	count= count+1;
	$display("time=%0t,clk=%b,count=%b",$time,clk,count);
	end

	$finish;
	end
endmodule
