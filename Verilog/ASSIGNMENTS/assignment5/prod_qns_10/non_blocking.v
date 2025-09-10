module non_blocking(
output reg[7:0] x,y
);

	initial begin
	x<=8'd5;
	y<= x+8'd3;
	#1 $display("time=%4t after non-blocking | x=%0d y=%0d",$time,x,y);
	#10 $finish;
	end
endmodule 
