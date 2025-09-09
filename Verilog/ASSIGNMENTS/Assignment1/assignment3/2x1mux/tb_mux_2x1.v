module tb_mux_2x1;

reg sel,i0,i1;
wire y;

mux_2x1 dut(sel,i0,i1,y);

initial begin

$monitor("sel=%b i0=%b i1=%b output=%b ",sel,i0,i1,y);

sel=0; i0=1; i1=0;#10
sel=1; i0=1; i1=1;#10
$finish;
end
endmodule  
