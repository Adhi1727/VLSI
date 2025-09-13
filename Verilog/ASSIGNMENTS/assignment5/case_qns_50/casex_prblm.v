module casex_prblm (
    input  [3:0] sel,
    output reg [7:0] y
);

always @(*) begin
    casex (sel)   
        4'b0001: y = 8'b00000001;
        4'b001x: y = 8'b00000010;   
        4'b01xx: y = 8'b00000100;   
        default: y = 8'b11111111;
    endcase
end

endmodule

