module buffer_simple;
reg clk;
reg [7:0] data_in;
reg [7:0] buffer[0:7];
integer i;

	initial begin
	clk=0;
	forever #5 clk=~clk;
	end

	initial begin
	data_in=1;
	i=0;
	repeat (8) begin
	@(posedge clk);
	buffer[i]=data_in;
	$display("time=%0t,buffer[%0d]=%0d",$time,i,buffer[i]);
	i=i+1;
	data_in = data_in+1;
	end

	#50 $finish;
	end
endmodule
