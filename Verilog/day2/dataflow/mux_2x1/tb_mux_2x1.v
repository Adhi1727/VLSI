module tb_mux_2x1;
reg i0,i1,s;
wire y;

mux_2x1 uut(.i0(i0),.i1(i1),.s(s),.y(y));
 
	initial begin


	$display("s | i0 i1 | y");
	$monitor(" %b | %b %b | %b",s,i0,i1,y);

	s=0; i0=0; i1=1;#10;
	s=1; i0=1; i1=0;#10;
	s=0; i0=1; i1=1;#10;
	s=1; i0=1; i1=1;#10;
	$finish;
end
endmodule
