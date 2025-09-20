module tb_full_adder;
reg a,b,cin;
wire cout,sum;

full_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

integer i;
 	initial begin
	$dumpfile("full_adder.vcd");
	$dumpvars(0,tb_full_adder);

	$display("Time | ta b cin | sum cout");

	for(i=0;i<8;i=i+1) begin
	{a,b,cin} = i;
	#5
	$display("%0t | %b %b %b | %b %b ",$time,a,b,cin,sum,cout);
	end
	$finish;
	end
endmodule
