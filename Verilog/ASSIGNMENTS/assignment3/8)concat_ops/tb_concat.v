module tb_concat;
reg [1:0]a,b,c;
wire [3:0]y;

concat dut(a,b,c,y);
initial begin

$monitor("a=%b b=%b c=%b y=%b",a,b,c,y);

a=2'b11; b=2'b01; c=2'b10;#10
a=2'b10; b=2'b11; c=2'b01;#10

$finish;
end
endmodule
