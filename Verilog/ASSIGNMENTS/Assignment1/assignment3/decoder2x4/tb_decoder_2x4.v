module tb_decoder_2x4;
reg [1:0]a;
wire [3:0]y;

decoder_2x4 dut(a,y);


initial begin

$monitor("a[1]=%b a[0]=%b y[3]=%b y[2]=%b y[1]=%b y[0]=%b",a[1],a[0],y[3],y[2],y[1],y[0]);

a=2'b00; #10
a=2'b01; #10
a=2'b10; #10
a=2'b11; #10

$finish;
end
endmodule 
