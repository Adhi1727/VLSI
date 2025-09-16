module multplier_2x2(
input [1:0] a,b,
output [3:0] s
);

	assign s[3:0]={ ((a[1]&b[1])&((a[1]&b[0])|(a[0]&b[1])))?1'b1:1'b0,
	 ((a[1]&b[1])^((a[1]&b[0])&(a[0]&b[1])))?1'b1:1'b0,
	 ((a[1]&b[0])^(a[0]&b[1]))?1'b1:1'b0,
	 (a[0]&b[0])?1'b1:1'b0
 };
endmodule
