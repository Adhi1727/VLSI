module tb_mux_4x1_if;
reg a,b,c,d;
reg [1:0] sel;
wire y;

mux_4x1_if uut(.a(a),.b(b),.c(c),.d(d),.sel(sel),.y(y));

       initial begin
        $dumpfile("mux_4x1_if_wave.vcd"); 
        $dumpvars(0, tb_mux_4x1_if);

        $display(" a b c d | sel | y ");
        $display("-------------------");
        $monitor(" %b %b %b %b | %b  | %b", a, b, c, d, sel, y);

        
        a=0; b=1; c=0; d=1;  

        sel = 2'b00; #10;   
        sel = 2'b01; #10;   
        sel = 2'b10; #10;   
        sel = 2'b11; #10;   

        $finish;
    end
endmodule
