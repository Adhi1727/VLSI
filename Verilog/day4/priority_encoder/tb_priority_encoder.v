module tb_priority_encoder;
reg [3:0]a;
wire [1:0] y;

priority_encoder uut(.a(a),.y(y));

	initial begin
	$display("time | a | y");
	$monitor("%0t | %b | %b",$time,a,y);

	a=4'b0001;#10;
        a=4'b001x;#10;
        a=4'b01xx;#10;
        a=4'b1xxx;#10;
	$finish;
	end
endmodule

