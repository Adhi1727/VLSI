//dataflow 
module xor_gate(o,a,b);
input a,b;
output o;
assign o=a^b;
endmodule

//gatelevel
module xor_gate(o,a,b);
  input a.b;
  output o;
  xor(o,a,b);
endmodule

// behavioural level
module xor_gate(o,a,b);
  input a,b;
  output reg o;
  always @(a,b)
  o=a^b; 
endmodule


//testbench
module tb_xor;

  reg a, b;
  wire o;

  xor_gate uut (.a(a), .b(b), .o(o));

  initial begin
    $dumpfile("xor_wave.vcd");
    $dumpvars(0, tb_xor);

    $display("time | a b | o");
    $monitor("%4t | %b %b | %b", $time, a, b, o);

    a=0; b=0; #10;
    a=0; b=1; #10;
    a=1; b=0; #10;
    a=1; b=1; #10;
    $finish;
  end
endmodule
