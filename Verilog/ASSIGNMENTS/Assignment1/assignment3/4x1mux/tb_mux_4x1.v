module tb_mux_4x1();

reg [1:0]s;
reg [3:0]i;
wire y;

mux_4x1 dut(s,i,y);

initial begin

$monitor("s=%b i=%b y=%b ",s,i,y);

s=2'b00; i=4'b1001; #10
s=2'b01; i=4'b0101; #10
s=2'b10; i=4'b0110; #10
s=2'b11; i=4'b1001; #10

$finish;
end
endmodule 
