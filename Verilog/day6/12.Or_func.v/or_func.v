module or_func;
  reg [7:0] a;
  reg result;


  function or_bus;
    input [7:0] in;
    integer i;
    begin
      or_bus = 1'b1;
      for (i = 0; i < 8; i = i + 1) begin
        or_bus = or_bus | in[i];
      end
    end
  endfunction

  initial begin
    a = 8'b11110111;
    result = or_bus(a);
    $display("Input  = %b", a);
    $display("Result = %b", result);
  end
endmodule
