module tb1_sr_ff;
reg clk,rst,s,r;
wire q,qbar;
integer i;
sr_ff dut(clk,rst,s,r,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("time=%0t clk=%b rst=%b s=%b r=%b q=%b qbar=%b ",$time,clk,rst,s,r,q,qbar);

rst=1;s=0; r=0;#5
rst=0;

for(i=0; i<4;i=i+1)begin
{s,r}=i;
#10;
end
$finish;
end
endmodule
