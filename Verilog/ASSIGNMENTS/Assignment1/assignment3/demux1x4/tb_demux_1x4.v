module tb_demux_1x4();

reg [1:0]s;
reg i;
wire [3:0]y;

demux_1x4 dut(s,i,y);

initial begin

$monitor("s=%b i=%b y=%b",s,i,y);

s=2'b00; i=1;#10
s=2'b01; i=1;#10
s=2'b10; i=1;#10
s=2'b11; i=1;#10

$finish;
end
endmodule
