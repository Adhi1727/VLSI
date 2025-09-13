module tb_casex_prblm;
    reg [3:0] sel;
    wire [7:0] y;

    casex_prblm uut(.sel(sel), .y(y));

    initial begin

        $display("Time | sel  | y");
        $monitor("%4t | %b | %b", $time, sel, y);

        sel = 4'b0001; #10;  
        sel = 4'b0010; #10;  
        sel = 4'b0011; #10;  
        sel = 4'b01x0; #10; 
        sel = 4'b1000; #10;  
        $finish;
    end
endmodule
