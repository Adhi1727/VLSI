module tb_simple_toggle;
    reg clk = 0;
    reg rst = 1;
    wire out;

    
    simple_toggle uut(
        .clk(clk),
        .rst(rst),
        .out(out)
    );

    
    always #5 clk = ~clk;

   
    initial begin
        #10 rst = 0;
        #100 $finish;
    end

    
    initial begin
        $monitor($time, " clk=%b rst=%b out=%b", clk, rst, out);
    end
endmodule

