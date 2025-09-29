module tb_mux_4x1;
reg i0,i1,i2,i3,s0,s1;
wire out;

mux_4x1 uut(.i0(i0),.i1(i1),.i2(i2),.i3(i3),.s0(s0),.s1(s1),.out(out));

	initial begin 
	i0=1; i1=0; i2=1; i3=0;

	s0=0; s1=0;#10; 
	s0=0; s1=1;#10;
	s0=1; s1=0;#10;
	s0=1; s1=1;#10;
	end

	always @(*) begin
	$monitor("time=%0t,i0=%b,i1=%b,i2=%b,i3=%b,s0=%b,s1=%b,out=%b",$time,i0,i1,i2,i3,s0,s1,out);
	#50 $finish;
	end
endmodule 
