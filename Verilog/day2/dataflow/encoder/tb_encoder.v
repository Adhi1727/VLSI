module tb_encoder;
reg  [3:0] a;    
wire [1:0] z;

encoder uut (.a(a), .z(z));


	initial begin
		
	$display(" a     | z ");
	$monitor(" %b | %b", a, z);

	a = 4'b0001; #10;   
	a = 4'b0010; #10;   
	a = 4'b0100; #10;   
	a = 4'b1000; #10;
	$finish;
	end
endmodule
