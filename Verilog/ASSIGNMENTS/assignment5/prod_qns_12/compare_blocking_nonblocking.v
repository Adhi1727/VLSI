module compare_blocking_nonblocking(
output reg[7:0] a_blck,b_blck,c_blck ,
output reg[7:0] a_nblk,b_nblk,c_nblk
);

	initial begin
		a_blck=0; b_blck=0; c_blck=0;
		a_nblk=0; b_nblk=0; c_nblk=0;

		a_blck=5;
		b_blck= a_blck+1;
		c_blck= b_blck+1;


		a_nblk <=5;
		b_nblk <= a_nblk+1;
		c_nblk <= b_nblk+1;

                $display("T=%0t | Blocking: a=%0d, b=%0d, c=%0d", $time, a_blck, b_blck, c_blck);
                $display("T=%0t | Non-Blocking (before updates): a=%0d, b=%0d, c=%0d", $time, a_nblk, b_nblk, c_nblk);

                #1;
                $display("T=%0t | Non-Blocking (after updates): a=%0d, b=%0d, c=%0d", $time, a_nblk, b_nblk, c_nblk);

		#10 $finish;
		end
endmodule
