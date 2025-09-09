module detect(input [7:0]x,output zero,one);

assign zero=~(|x);
assign one=&x;

endmodule
