module tb_adder_4bit;
reg [3:0] a,b;
reg cin;
wire [3:0] sum;
wire cout;

adder_4bit uut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

	task input_values;
	input [3:0] x,y;
	input c;
	begin
	a=x;
	b=y;
	cin=c;
	#5;
	$display("time=%0t,a=%b,b=%b,cin=%b --> sum=%b,cout=%b",$time,a,b,cin,sum,cout);
	end
	endtask

	initial begin
	$dumpfile("adder_4bit.vcd");
	$dumpvars(0,tb_adder_4bit);

	$display("time/t a b cin | sum cout");

	input_values(4'b0011,4'b1100,1);
	input_values(4'b1011,4'b0100,0);
	input_values(4'b1111,4'b1110,1);
	input_values(4'b0111,4'b0110,0);

	$finish;
	end
endmodule
