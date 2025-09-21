module or_opr;
reg [7:0] a,b;
wire [8:0] or_res;

reg [8:0] or_out;
initial begin
	a=8'b01010101;
	b=8'b11110000;

	or_gate(a,b,or_out);
	$display("a=%b,b=%b --> or_res=%b",a,b,or_out);
end

	task or_gate;
	input [7:0] x,y;
	output [8:0] or_out;
	begin
		or_out=a|b;
	end
	endtask
endmodule

