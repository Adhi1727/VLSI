module tb_demux_1x2;
reg in,sel;
wire y0,y1;

demux_1x2 uut(.in(in),.sel(sel),.y0(y0),.y1(y1));

	initial begin
	$display("sel in | yo y1");
	$monitor("%b %b |%b %b",sel,in,y0,y1);

	sel=0; in=0;#10;
	sel=0; in=1;#10;
	sel=1; in=0;#10;
	sel=1; in=1;#10;
	$finish;
end
endmodule
