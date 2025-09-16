module tb_t_ff;
reg clk,rst,t;
wire q,qbar;
integer i;

t_ff dut(clk, rst,t,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b t=%b q=%b qbar=%b",$time,clk,rst,t,q,qbar);

rst=1;t=0;
#15;
rst=0;
for(i=0; i<2; i=i+1)begin
@(posedge clk)
t=i;
#10;
end
 $finish;
end
endmodule
