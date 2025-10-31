module tb_seq_dec;
reg clk,rst,x;
wire z;

seq_dec uut(.clk(clk),.rst(rst),.x(x),.z(z));

        initial begin 
		clk = 0;
	forever #2 clk=~clk;
        end

	initial begin

        $dumpfile("dump.vcd");
        $dumpvars(0);

        $display("time| rst | x | state | nextstate | z");
        $monitor("%4t | %b  | %b|   %b    |    %b     | %b |",$time,rst,x,uut.state,uut.next_state,z);
	
	#4 rst = 0;
	#4 rst = 1;

	#4 x=0;
	#4 x=0;
	#4 x=1;
	#4 x=1;
	#4 x=1;
	#4 x=0;
	#4 x=1;
	#4 x=0;
	#4 x=0;
	#4 x=0;
	#4 x=1;
	#4 x=0;
	#4 x=1;
	#4 x=1;
	#4 x=1;
	#4 x=0;
	#4 x=0;
	
	#10 $finish;
end
endmodule
