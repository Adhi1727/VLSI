module concat(input [1:0]a,b,c,output [3:0]y);

assign y[3:0]={a,b[0],c[1]};

endmodule
