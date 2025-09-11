module race_fix;
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
    $monitor("time=%0t clk=%b | a=%b b=%b (race) | c=%b d=%b (fixed)", 
             $time, clk, a, b, c, d);
    #30 $finish;
  end

  //  Race condition using blocking
  always @(posedge clk) begin
    a = b;  
    b = a;  
  end

  //  Fixed using non-blocking
  always @(posedge clk) begin
    c <= d;
    d <= c;
  end

endmodule
