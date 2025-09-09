module comparator(input a,b,output ceq,clt,cgt);

assign ceq=a==b;
assign clt=a<b;
assign cgt=a>b;

endmodule
