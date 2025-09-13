module tb_bus_decoder_case;
reg [2:0] sel;
wire [7:0] y;

bus_decoder_case uut(.sel(sel),.y(y));

  initial begin

        $display("Time | sel | y");
        $monitor("%4t | %b | %b", $time, sel, y);

        
        sel = 3'b000; #10;
        sel = 3'b001; #10;
        sel = 3'b010; #10;
        sel = 3'b011; #10;
        sel = 3'b100; #10;
        sel = 3'b101; #10;
        sel = 3'b110; #10;
        sel = 3'b111; #10;
        sel = 3'bxxx; #10;  
        $finish;
end
endmodule
