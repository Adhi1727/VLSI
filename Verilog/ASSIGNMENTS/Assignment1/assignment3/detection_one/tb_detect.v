module tb_detect;
reg [7:0]x;
wire zero,one;

detect dut(x,zero,one);
initial begin

$monitor("x=%b zero=%b one=%b",x,zero,one);

x=8'b00101010;#10
x=8'b10101010;#10
x=8'b11111111;#10
x=8'b00000000;#10
$finish;
end
endmodule
