module monitor;
  reg clk;
  reg [3:0] data;

  
  initial begin
    clk = 0;
    forever #5 clk = ~clk;  // Clock period = 10
  end

  initial begin
    data = 0;
    #7  data = 1;
    #10 data = 3;
    #8  data = 7;
    #10 data = 0;
    #5  $finish;
  end


  initial begin
    $monitor("Time=%0t | clk=%b | data=%0d", $time, clk, data);
    $monitoroff;  // initially turn off monitoring

    #10 $monitoron;  // start monitoring at time 10
    #20 $monitoroff; // stop monitoring at time 30
    #5  $monitoron;  // resume monitoring at time 35
  end
endmodule
🔎 How it works:
