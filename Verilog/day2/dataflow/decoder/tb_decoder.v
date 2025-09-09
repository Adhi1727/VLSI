module tb_decoder;
reg [1:0] a;
wire [3:0] y;

decorder uut (.a(a),.y(y));

	initial begin 
 	$display(" a | y");
	$monitor(" %b | %b",a,y);

	a=2'b00;#10;
	a=2'b01;#10;
	a=2'b10;#10;
	a=2'b11;#10;
	$finish;
end 
endmodule
