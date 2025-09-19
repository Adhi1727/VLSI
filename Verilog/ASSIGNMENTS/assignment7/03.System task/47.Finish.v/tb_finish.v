module tb_finish;
  reg clk;
  reg [7:0] data;

  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;   // clock period = 10 time units
  end

  initial begin
    data = 0;
    #7  data = 10;
    #10 data = 20;
    #8  data = 30;
    #5  data = 40;
  end

 
  initial begin
    $monitor("Time=%0t | clk=%b | data=%0d", $time, clk, data);
  end

 
  initial begin
    #50 $finish;   
  end
endmodule
