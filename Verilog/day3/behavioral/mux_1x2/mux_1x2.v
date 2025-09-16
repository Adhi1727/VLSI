module mux_1x2(
input din,
input sel,
output reg y0,y1
);

	always @(*) begin
	     if (sel==0) begin
		y0=din;
		y1=0;
	     end else begin
		y0=0;
		y1=din;
	     end
	end
endmodule
