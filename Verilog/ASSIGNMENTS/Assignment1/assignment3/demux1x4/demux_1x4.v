module demux_1x4(input [1:0]s,input i,output [3:0]y);

assign {y[3:0]}=(s[1])?((s[0])?{i,1'b0,1'b0,1'b0}:{1'b0,i,1'b0,1'b0}):((s[0]?{1'b0,1'b0,i,1'b0}:{1'b0,1'b0,1'b0,i}));

endmodule 
