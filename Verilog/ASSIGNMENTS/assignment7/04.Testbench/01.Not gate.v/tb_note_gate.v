module tb_not_gate;
reg a;
wire y;

not_gate uut(.a(a),.y(y));

	initial begin
	$dumpfile("not_gate.vcd");
	$dumpvars(0,tb_not_gate);

	$display(" time | a | y");
	$monitor(" %0t | %b |%b",$time,a,y);

	a=1;#10;
	a=0;#10;
	a=1;#10;

	$finish;
	end
endmodule
