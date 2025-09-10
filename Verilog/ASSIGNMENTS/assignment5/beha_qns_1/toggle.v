module toggle(
	output reg out
	
);

	initial begin
		out=0;
	end

	always begin
	      	#5 out= ~out;
	end 
endmodule
