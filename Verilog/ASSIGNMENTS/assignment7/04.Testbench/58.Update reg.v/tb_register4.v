module tb_register4;
reg clk;
reg [3:0] d;
wire [3:0] q;

register4 uut(.clk(clk),.d(d),.q(q));

	initial begin
	clk=0;
	end 

	always #5 clk=~clk;


	initial begin
	$dumpfile("register4.vcd");
	$dumpvars(0,tb_register4);

	$display("time | clk | d | q");
	$monitor("time=%0t,clk=%b,d=%b,q=%b",$time,clk,d,q);

	d=4'b1010;#10;
	d=4'b1111;#10;
	d=4'b1100;#10;
	d=4'b0000;#10;
	d=4'b1001;#10;
	$finish;
	end
endmodule
