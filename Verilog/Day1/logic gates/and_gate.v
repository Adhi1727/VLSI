//Gate level
module and_gate(o,a,b);
  input(a,b);
  output(o);
  and(o,a,b);
endmodule


//Data flow
module and_gate(0,a,b);
  input(a,b);
  output(o);
  assign o=a&b;
endmodule
  
 //Behavioural level
module and_gate(
  input a,
  input b,
  output reg o
);
  always @*
    begin
      o = a & b;
    end
endmodule




//testbench
module tb_and;

  reg a, b;
  wire o;
  
  and_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("and_wave.vcd");
    $dumpvars(0, tb_and);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule
    
      
