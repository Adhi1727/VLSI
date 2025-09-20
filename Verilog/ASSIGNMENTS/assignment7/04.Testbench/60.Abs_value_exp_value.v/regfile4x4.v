module regfile4x4(
    input clk,
    input we,              
    input [1:0] waddr,       
    input [1:0] raddr,        
    input [3:0] wdata,        
    output [3:0] rdata        
);
    
    reg [3:0] regs [3:0];

  
    always @(posedge clk) begin
        if (we)
            regs[waddr] <= wdata;
    end

    assign rdata = regs[raddr];
endmodule

