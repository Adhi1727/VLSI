module tb_shift;
reg [3:0]a;
reg [1:0]b;
wire [3:0]x,y;

shift dut(a,b,x,y);
initial begin
$monitor("a=%b b=%b leftshift=%b rightshift=%b ",a,b,x,y);

a=4'b0001; b=2'd1;#10
a=4'b1001; b=2'd2;#10

$finish;
end 
endmodule 
