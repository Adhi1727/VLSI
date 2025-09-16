module tb_jk_ff();

reg clk,rst,j,k;
wire q,qbar;
integer i;

jk_ff dut(clk,rst,j,k,q,qbar);

initial begin
clk=0;
forever #5 clk=~clk;
end

initial begin
$monitor("Time=%0t clk=%b rst=%b j=%b k=%b q=%b qbar=%b",$time,clk,rst,j,k,q,qbar);

rst=1;j=0; k=0;
#10
rst=0;
for(i=0; i<4; i=i+1)begin
{j,k}=i;
@(posedge clk);	

end
#10 $finish;
end
endmodule
