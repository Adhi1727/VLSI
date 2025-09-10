module tb_toggle;
wire out;

toggle uut(.out(out));

	initial begin
	$monitor("%4t ns : out=%b",$time,out);
	#50 $finish;
end
endmodule
