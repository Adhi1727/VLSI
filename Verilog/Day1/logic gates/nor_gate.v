//Data flow
module nor_gate(o,a,b);
  input a,b;
  output o;
  assign o=~(a|b);
endmodule

//gate level
module nor_gate(o,a,b);
  input a,b;
  output o;
  nor(o,a,b);
endmodule

// behavioural level
module nor_gate(o,a,b);
  input a,b;
  output reg o;
  always @(a,b)
    y=~(a|b);
    endmodule

//Testbench
module tb_nor;

  reg a, b;
  wire o;

  nor_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("nor_wave.vcd");
    $dumpvars(0, tb_nor);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule


