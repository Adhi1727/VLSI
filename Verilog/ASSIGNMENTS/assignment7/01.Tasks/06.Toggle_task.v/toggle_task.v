module toggle_task;
reg sig;

	task toggle; 	
	   inout sig;
		begin
	         #10 sig = ~sig;
           end
	endtask

	initial begin
		sig = 0;

	$monitor("time=%0t,sig=%b",$time,sig);


	repeat (10) begin
		toggle(sig);
	end
	#10 $finish;
	end
endmodule
