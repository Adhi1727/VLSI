module tb_ripplecarry_adder;
reg [3:0]a,b;
reg c;
wire [3:0]sum,carry;

ripplecarry_adder dut(.a(a),.b(b),.c(c),.sum(sum),.carry(carry));
initial begin

$monitor("a=%b b=%b c=%b sum=%b carry=%b",a,b,c,sum,carry);
$dumpfile("ripple.vcd");
$dumpvars();

a=0; b=0; c=0; #10
a=0; b=0; c=1; #10
a=0; b=1; c=0; #10
a=0; b=1; c=1; #10
a=1; b=0; c=0; #10
a=1; b=0; c=1; #10
a=1; b=1; c=0; #10
a=1; b=1; c=1; #10

$finish;
end
endmodule
