module tb_dff_async;
reg clk,rst,d;
wire q;

dff_async uut(.clk(clk),.rst(rst),.d(d),.q(q));

	initial begin
		clk=0;
	forever #5 clk=~clk;
	end

	initial begin
	$dumpfile("dff_async.vcd");
	$dumpvars(0,tb_dff_async);

	$display("time|tclk|trst|td|tq");
	$monitor("%0t|%b|%b|%b|%b",$time,clk,rst,d,q);

	rst = 1; d = 0; #12;
        rst = 0; d = 1; #10;  
        d = 0; #10;       
        d = 1; #10;            
        rst = 1; #7;        
        rst = 0; d = 0; #10;   
        d = 1; #10;

	$finish;
	end
endmodule	
