module tb_mux_2x1_if;
reg a,b,sel;
wire y;

mux_2x1_if uut(.a(a),.b(b),.sel(sel),.y(y));

	initial begin
	$display("a b sel | y ");
	$monitor("%b %b %b | %b",a,b,sel,y);
	
	a = 0; b = 0; sel = 0; #10;
        a = 0; b = 1; sel = 0; #10;
        a = 1; b = 0; sel = 0; #10;
        a = 1; b = 1; sel = 0; #10;

        a = 0; b = 0; sel = 1; #10;
        a = 0; b = 1; sel = 1; #10;
        a = 1; b = 0; sel = 1; #10;
        a = 1; b = 1; sel = 1; #10;
	$finish;
	end
endmodule
