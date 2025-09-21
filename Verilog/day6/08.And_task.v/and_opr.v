module and_opr;
reg [7:0] a,b;
wire [8:0] and_res;

reg [8:0] and_out;
initial begin
	a=8'b01010101;
	b=8'b11110000;

	and_gate(a,b,and_out);
	$display("a=%b,b=%b --> and_res=%b",a,b,and_out);
end

	task and_gate;
	input [7:0] x,y;
	output [8:0] and_out;
	begin
		and_out=a&b;
	end
	endtask
endmodule

