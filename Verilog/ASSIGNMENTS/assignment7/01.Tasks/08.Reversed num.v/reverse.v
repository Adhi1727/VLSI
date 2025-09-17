module reverse;
reg [7:0] num;
reg [7:0] rev;

	task bit_reverse;
	input [7:0] in;
	output [7:0] out;
	integer i;
	begin
		out=0;
	     for (i=0;i<8;i=i+1) begin
	         out[7-i] = in[i];
	     end
	end
	endtask

	initial begin
	    num=8'b11111101;
	bit_reverse(num,rev);
	$display("input=%b",num);
	$display("reversed=%b",rev);
	end
endmodule		

