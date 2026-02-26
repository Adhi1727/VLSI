module tb_gates; // Declaring testbench module

reg a,b,ctr; // Input as driving signals and it can hold value data type as reg
wire r_and,r_or,r_not; // Output as monitoring signals and it can drive the value it data type as net
wire r_nand,r_nor,r_xor,r_xnor,r_buf;
wire r_bufif1,r_notif1;
wire r_bufif0,r_notif0;

gates uut(.a(a),.b(b),.ctr(ctr),.r_and(r_and),.r_or(r_or),.r_not(r_not),.r_nand(r_nand),.r_nor(r_nor),.r_xor(r_xor),.r_xnor(r_xnor),.r_buf(r_buf),.r_bufif1(r_bufif1),.r_notif1(r_notif1),.r_bufif0(r_bufif0),.r_notif0(r_notif0));

initial begin 
	a=0;b=0;ctr=0;

	#1 a=0;b=0;ctr=0;
	#2 a=0;b=1;ctr=0;
	#3 a=1;b=0;ctr=0;
	#4 a=1;b=1;ctr=0;

	#6 a=1;
	#10 a=1;ctr=1;
	#12 a=0;ctr=1;
	#14 a=1;ctr=0;
	#16 a=0;ctr=0;
	$finish;
end

initial begin
	$display("a = %b | b = %b | ctr = %b | o/p=> r_and = %b | r_or = %b | r_not = %b | r_nand = %b | r_nor = %b | r_xor = %b | r_xnor = %b | r_buf = %b | r_bufif1 = %b | r_notif1 = %b | r_bufif0 = %b | r_notif0 = %b",a,b,ctr,r_and,r_or,r_not,r_nand,r_nor,r_xor,r_xnor,r_buf,r_bufif1,r_notif1,r_bufif0,r_notif0);
end

initial begin
	$dumpfile("gates.vcd");
	$dumpvars();
end
endmodule
