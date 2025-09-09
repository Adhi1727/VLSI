module full_adder;
reg [3:0] a,b;
reg c_in;
wire [3:0] sum;
wire c_out;

full_adder uut(.a(a),.b(b),.c_in(c_in),.sum(sum),.c_out(c_out));

        initial begin
        $dumpfile("full_adder_.vcd");
        $dumpvars(0, tb_full_adder);

          $display("   a     b   c_in  |  sum   c_out");
        $display("---------------------------------");

        a = 4'b0001; b = 4'b0010; c_in = 0; #10;
        $display("%b  %b    %b   |  %b     %b", a, b, c_in, sum, c_out);

        a = 4'b0101; b = 4'b1010; c_in = 1; #10;
        $display("%b  %b    %b   |  %b     %b", a, b, c_in, sum, c_out);

        a = 4'b1111; b = 4'b1111; c_in = 1; #10;
        $display("%b  %b    %b   |  %b     %b", a, b, c_in, sum, c_out);

        $finish;
    end
endmodule
