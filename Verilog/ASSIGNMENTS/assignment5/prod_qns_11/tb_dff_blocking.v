module tb_dff_blocking;
reg clk,d;
wire q;

dff_blocking uut(.clk(clk), .d(d), .q(q));

	initial begin
	clk=0;
	forever #5 clk= ~clk;
        end

	initial begin
        $dumpfile("dff_blocking.vcd"); 
        $dumpvars(0, tb_dff_blocking);
 

	$monitor("time=%4t,clk=%b,d=%b,q=%b",$time,clk,d,q);
	
	d=0; #7;
	d=1; #10;
	d=0; #10;
	d=1; #10;
	#10 $finish;
	end
endmodule
