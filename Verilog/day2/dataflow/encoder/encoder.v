module encoder(a,z);
input [3:0] a;
output [1:0] z;

assign z[1] = a[3]|a[2];
assign z[0] = a[3]|a[1];

endmodule
