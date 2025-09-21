module sqr;
reg [7:0] a;
wire [15:0] sqr;

reg [15:0] out;

initial begin
	a=8'd12;

	bit8_sqr(a,out);
	$display("a=%0d --> sqr=%0d",a,out);
end

	task bit8_sqr;
	input [7:0] x;
	output [15:0] out;

	begin
		out = x*x;
	end
	endtask
endmodule

