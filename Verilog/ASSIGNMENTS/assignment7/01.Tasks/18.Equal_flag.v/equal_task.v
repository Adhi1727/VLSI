module equal_task;
reg [7:0] a,b;
reg flag;

	task equal_flag;
	input [7:0] x,y;
	output reg [7:0] f;
	begin
	if(x==y)
	   f=1;
	else
	   f=0;
	end
     	endtask

	initial begin
	a=8'b1110;
	b=8'b1110;
	equal_flag(a,b,flag);
	$display("a=%b,b=%b,flag=%b",a,b,flag);


	a=8'b110;
	b=8'b101;
	equal_flag(a,b,flag);                                                                                                   $display("a=%b,b=%b,flag=%b",a,b,flag);

	end
endmodule	

