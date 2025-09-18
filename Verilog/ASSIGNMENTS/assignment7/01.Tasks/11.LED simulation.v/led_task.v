module led_task;
reg led;

	task blink;
	input integer delay_val;
	begin
	    led=1;
	    #delay_val;
	    led=0;
	    #delay_val;
	end
	endtask

	initial begin
	    led=0;
	$monitor("time=%0t,Led=%d",$time,led);
	repeat(5) blink(10);
	$finish;
	end
endmodule
