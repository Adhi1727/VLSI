//dataflow
module xnor_gate(o,a,b);
  input a,b;
  output o;
  assign o=~(a^b);
endmodule

//gatelevel
module xnor_gate(o,a,b);
  input a,b;
  output o;
  xnor(o,a,b);
endmodule

//behavioural level
module xnor_gate(o,a,b);
  input a,b;
  output reg o;
  always @(a,b)
    o=~(a^b);
endmodule

//testbench
module tb_nand;

  reg a, b;
  wire o;

  nand_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("nand_wave.vcd");
    $dumpvars(0, tb_nand);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule
