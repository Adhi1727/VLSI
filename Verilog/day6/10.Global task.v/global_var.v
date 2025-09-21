module global_var;
reg [7:0] data;

	task global_drive;
	input [7:0] value;
	begin;
	   data=value;
	end
	endtask

	initial begin
	global_drive(8'd25);
	$display("data:%0d",data);

	global_drive(8'd40);
	$display("data:%0d",data);
	end
endmodule
