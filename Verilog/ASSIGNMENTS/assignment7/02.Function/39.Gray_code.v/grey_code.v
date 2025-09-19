module grey_code;

 
  function [3:0] bin_to_gray;
    input [3:0] bin;
    begin
      bin_to_gray[3] = bin[3];                 
      bin_to_gray[2] = bin[3] ^ bin[2];
      bin_to_gray[1] = bin[2] ^ bin[1];
      bin_to_gray[0] = bin[1] ^ bin[0];         
    end
  endfunction

  reg [3:0] a;
  reg [3:0] gray;

  initial begin
    a = 4'b1010;   
    gray = bin_to_gray(a);
    $display("Binary = %b, Gray Code = %b", a, gray);

    a = 4'b1111;
    gray = bin_to_gray(a);
    $display("Binary = %b, Gray Code = %b", a, gray);
  end

endmodule
