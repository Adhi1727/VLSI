module case_compare;
    reg [1:0] sel;
    reg y_case, y_casex, y_casez;

   
    always @(*) begin
        case (sel)
            2'b00: y_case = 0;
            2'b01: y_case = 1;
            default: y_case = 1'bx;
        endcase
    end

    
    always @(*) begin
        casex (sel)
            2'b0x: y_casex = 0;   
            2'b1x: y_casex = 1;   
            default: y_casex = 1'bx;
        endcase
    end

    
    always @(*) begin
        casez (sel)
            2'b0z: y_casez = 0;   
            2'b1z: y_casez = 1;   
            default: y_casez = 1'bx;
        endcase
    end

    initial begin
        $display(" time | sel | case | casex | casez ");
        $display("------------------------------------");
        $monitor(" %4t |  %b  |   %b   |   %b    |   %b",
                  $time, sel, y_case, y_casex, y_casez);

        sel = 2'b00; #10;
        sel = 2'b01; #10;
        sel = 2'b0x; #10;
        sel = 2'b1x; #10;
        sel = 2'b0z; #10;
        sel = 2'b1z; #10;

        $finish;
    end
endmodule
