module tb_demux_1x2;
reg din,sel;
wire y0,y1;

demux_1x2 uut(.din(din),.sel(sel),.y0(y0),.y1(y1));

	initial begin
	$display(" time | din sel | y0 y1 ");
	$monitor(" %0t | %b %b | %b %b ",$time,din,sel,y0,y1);

	din=0; sel=0;#10;
	din=0; sel=1;#10;
	din=1; sel=0;#10;
	din=1; sel=1;#10;
	 $finish;
	end
endmodule
