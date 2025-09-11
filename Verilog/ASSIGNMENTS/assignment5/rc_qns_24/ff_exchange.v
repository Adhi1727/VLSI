module ff_exchange;
  reg clk;
  reg a, b;   
  reg c, d;   

  initial begin
    clk = 0;
    forever #5 clk = ~clk;  
  end

  initial begin
    a = 0; b = 1;   
    c = 0; d = 1;   
    $monitor("time=%0t clk=%b | a=%b b=%b (blocking) | c=%b d=%b (non-blocking)",
             $time, clk, a, b, c, d);
    #30 $finish;
  end

  //  Blocking assignments
  always @(posedge clk) begin
    a = b;
    b = a;
  end

  // Non-blocking assignments
  always @(posedge clk) begin
    c <= d;
    d <= c;
  end

endmodule
