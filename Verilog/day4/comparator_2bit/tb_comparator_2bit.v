module tb_comparator_2bit;
reg a,b;
wire lt,eq,gt;

 comparator_2bit uut(.a(a),.b(b),.lt(lt),.eq(eq),.gt(gt));

	initial begin
	$display(" time | a b | lt eq gt ");
	$monitor(" %0t | %b %b | %b %b %b ",$time,a,b,lt,eq,gt);

	a=0; b=0;#10;
	a=0; b=1;#10;
	a=1; b=0;#10;
	a=1; b=1;#10;
	$finish;
	end
endmodule
