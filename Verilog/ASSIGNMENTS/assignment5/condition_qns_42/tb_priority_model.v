module tb_priority_model;
reg req1,req2,req3;
wire [1:0] grant;

priority_module uut(.req1(req1),.req2(req2),.req3(req3),.grant(grant));

	initial begin
	$display(" req1 req2 req3 | grant ");
	$monitor(" %b %b %b | %b",req1,req2,req2,grant);

	req1=1; req2=0; req3=0;#10;
	req1=0; req2=1; req3=0;#10;
	req1=0; req2=0; req3=1;#10;
	req1=1; req2=1; req3=0;#10;
	req1=0; req2=1; req3=1;#10;
	req1=1; req2=0; req3=1;#10;
	req1=1; req2=1; req3=1;#10;
	req1=0; req2=0; req3=0;#10;
	$finish;
	end
endmodule
