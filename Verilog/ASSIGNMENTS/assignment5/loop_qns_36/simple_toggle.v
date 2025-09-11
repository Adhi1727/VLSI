module simple_toggle(
    input clk,    
    input rst,    
    output reg out
);

always @(posedge clk) begin
    if (rst)
        out <= 0;
    else
        out <= ~out;  
end

endmodule
