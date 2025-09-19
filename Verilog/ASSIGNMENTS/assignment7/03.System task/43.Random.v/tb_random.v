module tb_random;
reg clk;
reg [7:0] data;

	initial begin
	clk=0;
	forever #5 clk=~clk;
	end

	initial begin
	repeat(10) begin
	#10 data = $random;
	end
	#50 $finish;
	end

	initial begin
	$monitor("Time=%0t | clk=%b | data=%0d (0x%0h)", $time, clk, data, data);
	end
endmodule
