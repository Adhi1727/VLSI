module right_shift_func;
  reg [7:0] a;        
  reg [2:0] n;       
  reg [7:0] result;   

  
  function [7:0] right_shift;
    input [7:0] in;
    input [2:0] shamt;   
    begin
      right_shift = in >> shamt;  
    end
  endfunction

  initial begin
    a = 8'b101101;
    n = 3;            
    result = right_shift(a, n);
    $display("Input  = %b", a);
    $display("Shift  = %0d", n);
    $display("Result = %b", result);
  end
endmodule

