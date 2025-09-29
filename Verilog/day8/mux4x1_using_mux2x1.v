module mux2x1(
input sel,i0,i1,
output y
);

assign y = sel?i1:i0;
endmodule

module mux4x1_using_mux2x1(
input s0,s1,i0,i1,i2,i3,
output out
);

mux2x1 m1(s1,i0,i1,x);
mux2x1 m2(s1,i2,i3,y);
mux2x1 m3(s0,x,y,out);

endmodule
