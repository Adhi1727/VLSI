module tb_state2_in2;
reg clk,rst,j,k;
wire out;

state2_in2 uut(.clk(clk),.rst(rst),.j(j),.k(k),.out(out));

always #5 clk =~clk;

                initial begin
        	$dumpfile("sec.vcd");
		$dumpvars(0);
		$monitor("Time=%0t | j=%b k=%b | out=%b", $time, j, k, out);
  		
		clk = 0;
		rst = 1;
    		j = 0;
   		k = 0;
		#10 rst = 0;
		#10 j = 1;
  		#10 j = 0;
		#20;
		
		k = 1;
		#10 k = 0;
		#10 j = 1; #10 j = 0;
    		#10 k = 1; #10 k = 0;
		#20 $finish;
	        
	        end

endmodule
