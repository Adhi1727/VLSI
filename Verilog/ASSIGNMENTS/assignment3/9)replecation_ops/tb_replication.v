module tb_replication;
reg [1:0]a,b,c;
wire [6:0]y;

replication dut(a,b,c,y);

initial begin
$monitor("a=%b|b=%b|c=%b|y=%b",a,b,c,y);

a=2'b00; b=2'b01; c=2'b11;#10
a=2'b01; b=2'b01; c=2'b10;#10

$finish;
end
endmodule
