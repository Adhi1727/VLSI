module greytobinary(
input [3:0]g,
output [3:0]b
);

	assign b[3:0]={g[3],
			((g[3]^g[2])? 1'b1:1'b0),
			((g[3]^g[2]^g[1])? 1'b1:1'b0),
			((g[3]^g[2]^g[1]^g[0])? 1'b1:1'b0)};
endmodule
