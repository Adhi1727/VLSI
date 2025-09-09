module tb_priorityencoder_4x2;

reg [3:0]a;
wire [1:0]y;

priorityencoder_4x2 dut(a,y);

initial begin

$monitor("a=%b y=%b",a,y);

a=4'b0001;#10
a=4'b001x;#10
a=4'b01xx;#10
a=4'b1xxx;#10
a=4'b1101;#10

$finish;
end 
endmodule 
