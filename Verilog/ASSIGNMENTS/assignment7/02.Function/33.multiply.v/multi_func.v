module multiply_no_star;
  reg [7:0] a, b;
  reg [15:0] result;

  function [15:0] multiply;
    input [7:0] x, y;
    integer i;
    begin
      multiply = 0;
      for (i = 0; i < y; i = i + 1) begin
        multiply = multiply + x;
      end
    end
  endfunction

  initial begin
    a = 8'd7;   
    b = 8'd5;   
    result = multiply(a, b);
    $display("a = %0d, b = %0d, result = %0d", a, b, result);
  end
endmodule
