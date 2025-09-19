module mux_func;
  reg [7:0] in0, in1, in2, in3;  
  reg [1:0] sel;                 
  reg [7:0] result;              

 
  function [7:0] mux4to1;
    input [7:0] a, b, c, d;  
    input [1:0] s;           
    begin
      case (s)
        2'b00: mux4to1 = a;
        2'b01: mux4to1 = b;
        2'b10: mux4to1 = c;
        2'b11: mux4to1 = d;
        default: mux4to1 = 8'b0;
      endcase
    end
  endfunction

  initial begin
   
    in0 = 8'd10;
    in1 = 8'd20;
    in2 = 8'd30;
    in3 = 8'd40;

    sel = 2'b00; result = mux4to1(in0, in1, in2, in3, sel);
    $display("sel=%b, output=%d", sel, result);

    sel = 2'b01; result = mux4to1(in0, in1, in2, in3, sel);
    $display("sel=%b, output=%d", sel, result);

    sel = 2'b10; result = mux4to1(in0, in1, in2, in3, sel);
    $display("sel=%b, output=%d", sel, result);

    sel = 2'b11; result = mux4to1(in0, in1, in2, in3, sel);
    $display("sel=%b, output=%d", sel, result);
  end
endmodule
