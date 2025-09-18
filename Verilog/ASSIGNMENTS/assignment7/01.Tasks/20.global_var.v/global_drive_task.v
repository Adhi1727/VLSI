module global_drive_task;
reg [7:0] data;

	task global_drive;
	input [7:0] value;
	begin;
	   data=value;
	end
	endtask

	initial begin
	global_drive(8'd15);
	$display("data:%0d",data);

	global_drive(8'd26);
	$display("data:%0d",data);
	end
endmodule
