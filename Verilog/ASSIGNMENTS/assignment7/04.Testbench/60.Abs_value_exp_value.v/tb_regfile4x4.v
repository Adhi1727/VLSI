module tb_regfile4x4;
    reg clk;
    reg we;
    reg [1:0] waddr, raddr;
    reg [3:0] wdata;
    wire [3:0] rdata;
    integer i;

    
    reg [3:0] expected [3:0];

    
    regfile4x4 uut (
        .clk(clk),
        .we(we),
        .waddr(waddr),
        .raddr(raddr),
        .wdata(wdata),
        .rdata(rdata)
    );

    
    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
       
        we = 1;
        for (i = 0; i < 4; i = i + 1) begin
            waddr = i;
            wdata = i + 1;
            expected[i] = wdata;
            #10;
        end
        we = 0;

        
        for (i = 0; i < 4; i = i + 1) begin
            raddr = i;
            #5;
            if (rdata !== expected[i])
                $display("Mismatch at Register %0d: Expected=%b, Actual=%b", i, expected[i], rdata);
            else
                $display("Register %0d OK: %b", i, rdata);
            #5;
        end

        $finish;
    end
endmodule

