module and_or_task;
reg [7:0] a,b;
wire [8:0] and_res,or_res;

reg [8:0] and_out,or_out;
initial begin
	a=8'b01010101;
	b=8'b11110000;

	and_or(a,b,and_out,or_out);
	$display("a=%b,b=%b --> and_res=%b,or_res=%b",a,b,and_out,or_out);
end

	task and_or;
	input [7:0] x,y;
	output [8:0] and_out,or_out;
	begin
		and_out=a&b;
		or_out=a|b;
	end
	endtask
endmodule
