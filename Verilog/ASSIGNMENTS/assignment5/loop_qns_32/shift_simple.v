module shift_simple;
reg [7:0] data;

	initial begin
	data=8'b00001100;
	$display("start:%b",data);
	

	while(data[7]==0) begin
	data=data<<1;
	$display("shift:%b",data);
	end

	$display("stop:%b(MSB=1)",data);
	$finish;
	end
endmodule
