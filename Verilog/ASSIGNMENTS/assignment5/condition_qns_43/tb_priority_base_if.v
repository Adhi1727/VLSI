module tb_priority_base_if;
reg in1,in2,in3;
wire [1:0] out;

 priority_based_if uut(.in1(in1),.in2(in2),.in3(in3),.out(out));

	initial begin
	$dumpfile("tb_priority_base_if.vcd");
	$dumpvars(0,tb_priority_base_if);

	$display("time | in1 in2 in3 | out");
	$monitor("%4t | %b %b %b | %b",$time,in1,in2,in3,out);

	in1=1; in2=0; in3=0;#10;
	in1=0; in2=1; in3=0;#10;
	in1=0; in2=0; in3=1;#10;
	in1=1; in2=1; in3=0;#10;
	in1=0; in2=1; in3=1;#10;
	in1=1; in2=0; in3=1;#10;
	in1=1; in2=1; in3=1;#10;
	in1=0; in2=0; in3=0;#10;
	$finish;
	end
endmodule
