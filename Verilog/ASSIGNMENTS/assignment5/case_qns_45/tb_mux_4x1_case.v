module tb_mux_4x1_case;
reg [3:0] d;
reg [1:0] sel;
wire y;

mux_4x1_case uut (.d(d),.sel(sel),.y(y));

	initial begin
	$display(" time | d sel | y");
	$monitor(" %0t | %b %b | %b",$time,d,sel,y);

	d=4'b1010;
	sel=2'b00;
	sel=2'b01;
	sel=2'b10;
        sel=2'b11;
	$finish;
end
endmodule


	
