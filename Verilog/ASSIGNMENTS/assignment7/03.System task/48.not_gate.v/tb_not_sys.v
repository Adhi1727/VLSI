module tb_not_sys;
  reg a;
  wire y;

  
  not_sys uut (
    .a(a),
    .y(y)
  );

  
  initial begin
    $dumpfile("not_sys.vcd");  
    $dumpvars(0, tb_not_sys);  
  end

  
  initial begin
    a = 0; #10;
    a = 1; #10;
    a = 0; #10;
    a = 1; #10;
    $finish;  
  end

  
  initial begin
    $monitor("Time=%0t | a=%b | y=%b", $time, a, y);
  end
endmodule
