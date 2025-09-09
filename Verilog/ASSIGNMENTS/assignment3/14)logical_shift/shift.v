module shift(input [3:0]a,input [1:0]b,output [3:0]x,y);

assign x=a<<b;
assign y=a>>b;

endmodule
