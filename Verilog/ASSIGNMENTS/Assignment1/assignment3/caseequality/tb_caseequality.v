module tb_caseequality;
reg [3:0]a,b;
wire [1:0]y;

caseequality dut (a,b,y);

initial begin

$monitor("a=%b b=%b logical=%b case=%b",a,b,y[0],y[1]);

a=4'b0000; b=4'b0000; #10
a=4'b1000; b=4'b1111; #10
a=4'b1x1z; b=4'b1x1z; #10
a=4'b010x; b=4'b1010; #10

$finish;
end 
endmodule
