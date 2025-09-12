module tb_encode_4x2_if;
reg [3:0] din;
wire [1:0] y;

encode_4x2_if uut(.din(din),.y(y));

	initial begin
	$display(" din | y ");
	$monitor(" %b | %b",din,y);

	din=4'b0000;#10;
	din=4'b0001;#10;
	din=4'b0010;#10;
	din=4'b0100;#10;
	din=4'b1000;#10;
	$finish;
	end
endmodule

