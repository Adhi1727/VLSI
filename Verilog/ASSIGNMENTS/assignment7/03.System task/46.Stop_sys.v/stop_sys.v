module stop_sys;
  reg clk;
  reg [7:0] data;

  
  initial begin
    clk = 0;
    forever #5 clk = ~clk; 
  end


  initial begin
    data = 0;
    #7  data = 10;
    #6  data = 20;   
    #7  data = 30;   
    #10 data = 40;  
  end

 
  initial begin
    $monitor("Time=%0t | clk=%b | data=%0d", $time, clk, data);
  end

	initial begin
	#20 $stop;
	end
endmodule
