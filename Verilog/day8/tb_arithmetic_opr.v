module tb_arithmetic_opr;
reg [7:0] a,b;
wire [7:0] sum,sub,mul,div,mod;

arithmetic_opr uut(.a(a),.b(b),.sum(sum),.sub(sub),.mul(mul),.div(div),.mod(mod));

	initial begin
	a=0;b=0;
	#2 a=8'd7; b=8'd8;
	#2 a=8'd12; b=8'd4;
	#2 a=8'd11; b=8'd6;
	#2 a=8'd15; b=8'd0;
	#2 a=8'd13; b=8'd11;
	end

	always @(*) begin
	$monitor("time=%0t,input:a=%0d,b=%0d,output:sum=%0d,sub=%0d,mul=%0d,div=%0d,mod=%0d",$time,a,b,sum,sub,mul,div,mod);
	#20 $finish;
	end
endmodule
