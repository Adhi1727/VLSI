module tb_ripple_adder;
reg [3:0] a,b;
reg cin;
wire [3:0] sum,carry;

ripple_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

	initial begin
	a=0;b=0;cin=0;
	a=2; b=3; cin=0;#10;
	a=1; b=6; cin=1;#10;
	a=8; b=8; cin=0;#10;
	a=9; b=12; cin=1;#10;
	a=5; b=0; cin=0;#10;
	end

	always @(*) begin
	$monitor("time=%0t,input value:a=%0d,b=%0d,cin=%b,output value:sum=%0d,carry=%0d",$time,a,b,cin,sum,carry);
	#80 $finish;
	end
endmodule
