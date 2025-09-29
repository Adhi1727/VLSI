module tb_full_adder;
reg a,b,cin;
wire sum,carry;

full_adder uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

	initial begin
	a=0; b=0; cin=0;
	#2 a=0; b=0; cin=1;
	#2 a=0; b=1; cin=0;
	#2 a=0; b=1; cin=1;
	#2 a=1; b=0; cin=0;
	#2 a=1; b=0; cin=1;
	#2 a=1; b=1; cin=0;
	#2 a=1; b=1; cin=1;
	#20 $finish;
	end

	always @(*) begin
	$display("time=%0t,input:a=%b,b=%b,cin=%b,output:sum=%b,carry=%b",$time,a,b,cin,sum,carry);
	end
endmodule 
