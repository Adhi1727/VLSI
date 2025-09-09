module full_adder(input a,b,c,output sum,carry);
wire w1,w2,w3;

xor (w1,a,b);
xor (sum,w1,c);

and (w2,a,b);
and (w3,w1,c);
or (carry,w2,w3);

endmodule

module ripplecarry_adder(input [3:0]a,b,input c,output [3:0]sum,carry);

full_adder f1(.a(a[0]),.b(b[0]),.c(c),.sum(sum[0]),.carry(carry[0]));
full_adder f2(.a(a[1]),.b(b[1]),.c(carry[0]),.sum(sum[1]),.carry(carry[1]));
full_adder f3(.a(a[2]),.b(b[2]),.c(carry[1]),.sum(sum[2]),.carry(carry[2]));
full_adder f4(.a(a[3]),.b(b[3]),.c(carry[2]),.sum(sum[3]),.carry(carry[3]));

endmodule
