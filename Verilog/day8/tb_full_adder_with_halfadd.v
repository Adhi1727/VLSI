module  tb_full_adder_with_halfadd;
reg a,b,cin;
wire sum,carry;

full_adder_with_halfadd uut(.a(a),.b(b),.cin(cin),.sum(sum),.carry(carry));

	initial begin
	a=0; b=0; cin=0; 
	a=0; b=0; cin=1;#10;
	a=0; b=1; cin=0;#10;
	a=0; b=1; cin=1;#10;
	a=1; b=0; cin=0;#10;
	a=1; b=0; cin=1;#10;
	a=1; b=1; cin=0;#10;
	a=1; b=1; cin=1;#10;
	#50 $finish;
	end
	
	always @(*) begin
	$display("time=%0t,a=%b,b=%b,cin=%b,sum=%b,carry=%b",$time,a,b,cin,sum,carry);
	end
endmodule
