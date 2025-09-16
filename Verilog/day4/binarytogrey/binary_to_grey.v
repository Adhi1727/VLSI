module binary_to_grey(
input [3:0] b,
output [3:0] g
);

	assign g[3:0]= {b[3]?1'b1:1'b0,
               (b[3]^b[2])?1'b1:1'b0,
               (b[2]^b[1])?1'b1:1'b0,
               (b[1]^b[0])?1'b1:1'b0};
endmodule
