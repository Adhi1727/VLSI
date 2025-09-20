module tb_and_opr;
reg a,b;
wire y;

and_opr uut(.a(a),.b(b),.y(y));

	initial begin

	$dumpfile("and_opr,vcd");
	$dumpvars(0,tb_and_opr);

	$display("uses $display and $monitor");
	$display("time | a b | y");

	$monitor("time=%0t,a=%b,b=%b,y=%b",$time,a,b,y);

	a=0;b=0;#10;
	a=0;b=1;#10;
	a=1;b=0;#10;
	a=1;b=1;#10;

	$finish;
	end
endmodule
