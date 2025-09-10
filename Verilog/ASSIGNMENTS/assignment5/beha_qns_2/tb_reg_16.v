module tb_reg_16;
wire[15:0] q;

reg_16 uut(.q(q));

	initial begin
	$monitor("time=%4t ,q=%h",$time,q);
	#100 $finish;
	end
endmodule
