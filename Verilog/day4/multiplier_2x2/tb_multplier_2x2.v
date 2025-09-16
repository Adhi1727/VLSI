module tb_multplier_2x2;
reg [1:0] a,b;
wire [3:0] s;

multplier_2x2 uut(.a(a),.b(b),.s(s));


	initial begin
	$display(" time | a b |  s");
	$monitor(" %0t | %b %b | %b",$time,a,b,s);

	a=2'b00; b=2'b00;#10;
	a=2'b01; b=2'b01;#10;
	a=2'b10; b=2'b10;#10;
	a=2'b11; b=2'b11;#10;
	a=2'b00; b=2'b00;#10;
	$finish;
	end
endmodule
