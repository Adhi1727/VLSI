module tb_regfile4x4;
    reg clk;
    reg we;
    reg [1:0] waddr, raddr;
    reg [3:0] wdata;
    wire [3:0] rdata;
    integer i;

  
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
        $dumpfile("regfile4x4.vcd");
        $dumpvars(0, tb_regfile4x4);

        $display("WRITE PHASE:");
        $display("Time\tWE WAddr WData");
        
   
        we = 1;
        for (i = 0; i < 4; i = i + 1) begin
            waddr = i;
            wdata = i + 1; // example data
            #10;
            $display("%0t\t %b   %b    %b", $time, we, waddr, wdata);
        end

        we = 0;

        $display("\nREAD PHASE:");
        $display("Time\tRAddr RData");
        for (i = 0; i < 4; i = i + 1) begin
            raddr = i;
            #10;
            $display("%0t\t %b    %b", $time, raddr, rdata);
        end

        $finish;
    end
endmodule


