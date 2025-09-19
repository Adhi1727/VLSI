module pow_of_two;
  reg [7:0] a;    
  reg result;     

  function is_power_of_two;
    input [7:0] in;
    begin
      if (in > 0 && ((in & (in - 1)) == 0))
        is_power_of_two = 1'b1;
      else
        is_power_of_two = 1'b0;
    end
  endfunction

  initial begin
    a = 8'd16;  
    result = is_power_of_two(a);
    $display("Input = %0d, Result = %b", a, result);

    a = 8'd18;  
    result = is_power_of_two(a);
    $display("Input = %0d, Result = %b", a, result);
  end
endmodule

