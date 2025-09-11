module tb_alu_blocking;
reg [3:0]a,b;
reg [2:0]sel;
wire [3:0]result;

alu_blocking uut(.a(a),.b(b),.sel(sel),.result(result));

	initial begin
        $dumpfile("alu_blocking.vcd");  
        $dumpvars(0, tb_alu_blocking);

	$monitor("time=%0t , a=%b , b=%b , sel=%b , result=%b",$time,a,b,sel,result);


	a=4'b0101; b=4'b0011; sel=3'b000;#10;
	a=4'b0101; b=4'b0011; sel=3'b001;#10;
	a=4'b0101; b=4'b0011; sel=3'b010;#10;
	a=4'b0101; b=4'b0011; sel=3'b011;#10;
	a=4'b0101; b=4'b0011; sel=3'b100;#10;
	a=4'b0101; b=4'b0011; sel=3'b111;#10;
	$finish;
end
endmodule
