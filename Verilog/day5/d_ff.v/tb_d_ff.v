module tb_d_ff;
reg clk,rst,d;
wire q,qbar;
integer i;

d_ff uut(.clk(clk),.rst(rst),.d(d),.q(q),.qbar(qbar));
initial begin
clk=0;
forever #5 clk =~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b d=%b q=%b qbar=%b",$time,clk,rst,d,q,qbar);

rst=1;d=0;
#10
rst=0;
for(i=0; i<2; i=i+1)begin
@(posedge clk);
d=i;
#10;
end
$finish;
end
endmodule
