module full_adder(
input a,b,
input cin,
output sum,carry
);

assign sum = a^b^cin;
assign carry = (a&b)|(a&cin)|(b&cin);

endmodule

module ripple_adder(
input [3:0] a,b,
input cin,
output [3:0] sum,carry
);

full_adder f1(a[0],b[0],cin,sum[0],carry[0]);
full_adder f2(a[1],b[1],carry[0],sum[1],carry[1]);
full_adder f3(a[2],b[2],carry[1],sum[2],carry[2]);
full_adder f4(a[3],b[3],carry[2],sum[3],carry[3]);

endmodule
