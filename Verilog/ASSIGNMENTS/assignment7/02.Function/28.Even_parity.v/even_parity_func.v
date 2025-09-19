module even_parity_func;
reg [7:0] data;
wire parity;

	assign parity = even_parity(data);

	initial begin
	data=8'b11001100;
	#1;
	$display("data=%b,even parity=%b",data,parity);
	end

	function even_parity;
	input [7:0] in;
	reg result;
	integer i;
	begin
		result=0;
	for(i=0;i<8;i=i+1) begin
		result = result^in[i];
	end
	even_parity=result;
        end
	endfunction

endmodule

