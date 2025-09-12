module tb_flag_logic;
reg f1,f2,f3;
wire [2:0] out;

  flag_logic uut(.f1(f1), .f2(f2), .f3(f3), .out(out));

	initial begin
	$display(" f1 f2 f3 | out ");
	$monitor(" %b %b %b | %b",f1,f2,f3,out);
 
	f1=0; f2=1; f3=0;#10;
	f1=1; f2=0; f3=0;#10;
	f1=0; f2=0; f3=1;#10;
	f1=1; f2=1; f3=0;#10
	f1=0; f2=1; f3=1;#10;
	f1=1; f2=0; f3=1;#10;
	f1=0; f2=0; f3=0;#10;
	f1=1; f2=1; f3=1;#10;
	$finish;
	end
endmodule
