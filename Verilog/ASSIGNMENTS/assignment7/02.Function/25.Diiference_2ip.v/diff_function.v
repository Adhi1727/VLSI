module diff_func;
reg [3:0] a,b;
wire [4:0] dif;


	assign dif = sub_two_ip(a,b);

	initial begin
	a=4'b1100;
	b=4'b1010;

	#1;
	$display("a:%b,b:%b,diff:%b",a,b,dif);
	end

	function [4:0]sub_two_ip;
	input [3:0] x,y;

	begin
	   sub_two_ip = x - y;
	end
	endfunction
endmodule
