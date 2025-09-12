module tb_decode_3x8_casez;
reg [2:0] a;
wire [7:0] y;

decode_3x8_casez uut(.a(a),.y(y));

	initial begin
	$display("time | a | y");
	$monitor("%0t | %b | %b",$time,a,y);

	a=3'b000;#10;
	a=3'b001;#10;
	a=3'b010;#10;
	a=3'b100;#10;
	a=3'b110;#10;
	a=3'b001;#10;
	$finish;
	end
endmodule

