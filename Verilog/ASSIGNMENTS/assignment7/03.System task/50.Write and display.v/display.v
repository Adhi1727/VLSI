module display;
  reg [3:0] a, b;

  initial begin
    a = 4'b1010;
    b = 4'b1100;

    $display("Using $display:");
    $display("a = %b", a);
    $display("b = %b", b);

    $display("\nUsing $write:");
    $write("a = %b, ", a);   
    $write("b = %b", b);     
    $display("");           

    $finish;
  end
endmodule
