module tb_or_gate;
reg a,b;
wire y;

or_gate uut(.a(a),.b(b),.y(y));

	initial begin
	$display(" time | a b | y ");
	$monitor(" %0t | %b %b | %b",$time,a,b,y);

	a=0; b=0;#10;
	a=0; b=1;#10;
	a=1; b=0;#10;
	a=1; b=1;#10;
	$finish;
	end 
endmodule
