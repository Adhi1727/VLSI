module tb_strobe;
  reg clk, data;

  initial begin
    clk = 0;
    forever #5 clk = ~clk;   
  end

  initial begin
    data = 0;
    #7  data = 1;   
    #10 data = 0;
    #8  data = 1;
    #10 data = 0;
    #50 $finish;
  end

  initial begin
    $strobe("Time=%0t | clk=%b | data=%b", $time, clk, data);
  
  end
endmodule
