module tb_multi4;
reg clk,rst,in;
wire out;

multi4 uut(.clk(clk),.rst(rst),.in(in),.out(out));

always #5 clk =~clk;

initial begin
	$dumpfile("sec_dec.vcd");
	$dumpvars(0);
	$monitor(" Time= %0t  |clk=%b |state =%b |in=%b| next_state =%b| out= %b",$time,clk,uut.state, in,uut.next_state,out);
        clk=0;

	rst=1;#5;
	rst=0;

	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=0;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	in=1;#10;
	$finish;
end
endmodule


