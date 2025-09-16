module tb_comparator_1bit;
reg [1:0]a;
wire [2:0]y;

comparator_1bit uut(.a(a),.y(y));

	initial begin
	$display(" time | a | y ");
	$monitor(" %0t | %b | %b",$time,a,y);

	a[0]=0; a[1]=0;#10;
	a[0]=0; a[1]=1;#10;
	a[0]=1; a[1]=0;#10;
	a[0]=1; a[1]=1;#10;
	$finish;
	end
endmodule
