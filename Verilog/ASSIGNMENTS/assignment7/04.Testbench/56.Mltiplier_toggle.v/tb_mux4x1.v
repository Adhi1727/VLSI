module tb_mux4x1;
reg [3:0] d;
reg [1:0] sel;
wire y;

mux4x1 uut(.d(d),.sel(sel),.y(y));

	integer i;

	initial begin

	$dumpfile("mux4x1.vcd");
	$dumpvars(0,tb_mux4x1);

	d=4'b1010;

	$display("time/t d | sel | y");

	for(i=0;i<4;i=i+1) begin
	   sel = i;
	#5;
	$display("time=%0t,d=%b,sel=%b,y=%b",$time,d,sel,y);
	end
	$finish;
	end
endmodule
