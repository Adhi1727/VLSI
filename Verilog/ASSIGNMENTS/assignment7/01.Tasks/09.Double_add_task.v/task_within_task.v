module task_within_task;
reg [7:0] a,b;
reg [7:0] result;

	task add_task(input[7:0]x,input[7:0]y,output[7:0]sum);
	begin
		sum=x+y;
	end
	endtask

	task double_add_task(input[7:0]x,input[7:0]y,output[7:0]final_result);
	reg [7:0] temp;
	begin
	add_task(x,y,temp);
	final_result=temp*2;
	end
	endtask

	initial begin
	a=8'd5;
	b=8'd10;

	double_add_task(a,b,result);

	$display("input:a=%d,b=%d",a,b);
	$display("result after doubling and add:%d",result);
	end
endmodule
