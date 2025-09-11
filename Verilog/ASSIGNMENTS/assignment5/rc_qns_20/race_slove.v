module race_simple;
  reg clk, q;

  // Clock generator
  initial begin
    clk = 0;
    forever #5 clk = ~clk;
  end

  //  use non-blocking (<=)
  always @(posedge clk) begin
    q <= 1;
  end

  always @(posedge clk) begin
    q <= 0;
  end

  initial begin
    $monitor("time=%0t clk=%b q=%b",$time,clk,q);
    #30 $finish;
  end
endmodule 

