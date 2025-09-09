module demux_1x2(in,sel,y0,y1);
input in,sel;
output y0,y1;

assign y0= ((~sel)&in);
assign y1= sel&in;

endmodule
