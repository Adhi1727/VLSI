module tb_mux8x3;
reg [7:0] d;
wire [2:0] y;

mux8x3 uut(.d(d),.y(y));

	initial begin
	d=8'b0000_0001;#10;
	d=8'b0000_0010;#10;
	d=8'b0000_0100;#10;
	d=8'b0000_1000;#10;
	d=8'b0001_0000;#10;
	d=8'b0010_0000;#10;
	d=8'b0100_0000;#10;
	d=8'b1000_0000;#10;
	end

	always @(*) begin
	$monitor("time=%0t,d=%b,y=%b",$time,d,y);
	#80 $finish;
	end
endmodule
