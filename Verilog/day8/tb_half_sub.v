module tb_half_sub;
reg a,b;
wire diff,bout;

half_sub uut(.a(a),.b(b),.diff(diff),.bout(bout));

	initial begin
	a=0; b=0; #10;
	a=0; b=1; #10;
	a=1; b=0; #10;
	a=1; b=1; #10;
	#50 $finish;
	end

	always @(*) begin
	$display("time=%0t,a=%b,b=%b,diff=%b,bout=%b",$time,a,b,diff,bout);
	end
endmodule
