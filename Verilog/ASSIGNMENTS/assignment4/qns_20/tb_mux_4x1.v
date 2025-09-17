module tb_mux_4x1;
  reg i0, i1, i2, i3;
  reg S0, S1;
  wire Y;

  mux_4x1 uut (.i0(i0), .i1(i1), .i2(i2), .i3(i3), .S0(S0), .S1(S1), .Y(Y));

  initial begin
    
    $display("S1 S0 | i3 i2 i1 i0 | Y");
    $monitor("%b  %b  |  %b  %b  %b  %b  | %b", S1, S0, i3, i2, i1, i0, Y);

    
    i0=0; i1=1; i2=0; i3=1;

    S1=0; S0=0; #10; // Expect Y = i0
    S1=0; S0=1; #10; // Expect Y = i1
    S1=1; S0=0; #10; // Expect Y = i2
    S1=1; S0=1; #10; // Expect Y = i3

    $finish;
  end
endmodule
