module tb_gates_using_mux;
  reg A, B;
  wire AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out;

  gates_using_mux uut(A, B, AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out);

  initial begin
    $display("A B | AND OR NAND NOR XOR XNOR");
    $monitor("%b %b |  %b   %b    %b    %b    %b    %b",
             A,B,AND_out,OR_out,NAND_out,NOR_out,XOR_out,XNOR_out);

    A=0; B=0; #10;
    A=0; B=1; #10;
    A=1; B=0; #10;
    A=1; B=1; #10;
    
    $finish;
  end
endmodule	

