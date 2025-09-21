module and_func;
  reg [7:0] a; 
  reg result;  

   
  function and_bus;
    input [7:0] in;
    integer i;
    begin
      and_bus = 1'b1;  
      for (i = 0; i < 8; i = i + 1) begin
        and_bus = and_bus & in[i];
      end
    end
  endfunction

  initial begin
    a = 8'b10000111;   
    result = and_bus(a);
    $display("Input  = %b", a);
    $display("Result = %b", result);
  end
endmodule

