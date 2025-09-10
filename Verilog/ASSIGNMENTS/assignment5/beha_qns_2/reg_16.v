module reg_16(
	output reg[15:0] q
);

	initial begin
		q=16'h0000;
	end 

	always begin
		#5 q=q+1;
	end
endmodule
