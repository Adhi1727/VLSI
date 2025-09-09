module mux_4x1(input [1:0]s,input [3:0]i,output y);

assign y=(s[1])?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);

endmodule 
