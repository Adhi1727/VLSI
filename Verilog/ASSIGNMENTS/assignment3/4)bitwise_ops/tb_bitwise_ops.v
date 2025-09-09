module tb_bitwise_ops;
    reg  [3:0] x, y;
    wire [3:0] not_x, and_xy, or_xy, xor_xy, xnor_xy;

    bitwise_ops uut (
        .x(x), .y(y),
        .not_x(not_x),
        .and_xy(and_xy),
        .or_xy(or_xy),
        .xor_xy(xor_xy),
        .xnor_xy(xnor_xy)
    );
        initial begin
        $dumpfile("bitwise_ops.vcd");
        $dumpvars(0,tb_bitwise_ops);

        $display("x  y  ~x  x&y  x|y  x^y  x^~y");
        $monitor("%b  %b  %b  %b  %b  %b  %b", x, y, not_x, and_xy, or_xy, xor_xy, xnor_xy);

         x = 4'b0000; y = 4'b0000; #10;
         x = 4'b0001; y = 4'b0011; #10;
         x = 4'b1111; y = 4'b0101; #10;
	 x = 4'b1010; y = 4'b0101; #10; 
         $finish;
end
endmodule
