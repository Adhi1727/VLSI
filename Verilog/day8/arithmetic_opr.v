module arithmetic_opr(
input [7:0] a,b,
output [7:0] sum,sub,mul,div,mod
);

assign sum = a+b;
assign sub = a-b;
assign mul = a*b;
assign div = a/b;
assign mod = a%b;


endmodule
