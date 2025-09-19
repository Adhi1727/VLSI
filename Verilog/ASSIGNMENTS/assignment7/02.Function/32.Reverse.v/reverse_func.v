module reverse_func;
  reg [7:0] a;       
  reg [7:0] result;  


  function [7:0] reverse_bits;
    input [7:0] in;
    integer i;
    begin
      for (i = 0; i < 8; i = i + 1) begin
        reverse_bits[i] = in[7 - i];
      end
    end
  endfunction

  initial begin
    a = 8'b10110010;   
    result = reverse_bits(a);
    $display("Input  = %b", a);
    $display("Output = %b", result);
  end
endmodule
