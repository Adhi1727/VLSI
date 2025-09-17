module gates_using_mux(input A, B,
                       output AND_out, OR_out, NAND_out, NOR_out, XOR_out, XNOR_out);


  assign AND_out  = (B) ? A   : 1'b0;
  assign OR_out   = (B) ? 1'b1: A;
  assign NAND_out = (B) ? ~A  : 1'b1;
  assign NOR_out  = (B) ? 1'b0: ~A;
  assign XOR_out  = (B) ? ~A  : A;
  assign XNOR_out = (B) ? A   : ~A;

endmodule
