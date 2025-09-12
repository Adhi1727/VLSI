module mux_2x1_if(
input wire a,b,
input wire sel,
output reg y
);

	always @(*) begin
	    if(sel)
	      y=b;
	    else
              y=a;
	end
endmodule

