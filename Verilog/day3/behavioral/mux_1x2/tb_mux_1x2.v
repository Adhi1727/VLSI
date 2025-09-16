module tb_mux_1x2;
reg din,sel;
wire y0,y1;

mux_1x2 uut(.din(din),.sel(sel),.y0(y0),.y1(y1));

	initial begin
	$display(" time | sel din | y0 y1 ");
	$monitor(" %0t | %b %b | %b %b",$time,sel,din,y0,y1);

	sel=0; din=1;#10;
	sel=1; din=1;#10;
	$finish;
	end
endmodule	
