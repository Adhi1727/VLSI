//Gate level
module not_gate(a,b);
  input a;
  output b;
  not(a,b);
endmodule

// behavioural level
module not_gate(y,a);
  input a;
  output reg y;
  always @(a)
   y=~a;

  
//dataflow
module not_gate(a,b);
input a;
output b;
assign b=~a;
endmodule



//Testbech 
module not_gate_tb;
  reg a;
  wire b;
 not_gate dut (
    .b(b),
    .a(a)
  );

  initial begin
    $display("Time\t a\t b");
    $monitor("%0t\t %b\t %b", $time, a, b);

    a = 0; #10;
    a = 1; #10;


    $finish;
  end
endmodule
