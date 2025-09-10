module clk_gen(
    output reg clk
);
    initial begin
        clk = 0;                  
        forever #5 clk = ~clk;    
    end

    initial begin
	$monitor("time=%4t , clk=%b",$time,clk);    
        #100 $finish;
    end
endmodule

