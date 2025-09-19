module square_func;
reg [7:0] a;
wire [15:0] sqr;

	assign sqr = square_of_num(a);

	initial begin
	a=8'd12;

	#1;
	$display("a:%0d --> sqr:%0d",a,sqr);

	a=8'd8;
	#1;
	$display("a:%0d --> sqr:%0d",a,sqr);
	end

	function [15:0] square_of_num;
	input [7:0] num;
	begin
	  square_of_num = num*num;
	end
	endfunction
endmodule
