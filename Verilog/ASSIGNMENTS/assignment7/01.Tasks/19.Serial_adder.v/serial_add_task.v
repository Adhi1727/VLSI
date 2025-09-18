module serial_add_task;
reg [3:0] a,b;
reg [4:0] sum;


	task serial_add;
	input [3:0] x,y;
	output [4:0] s;
	reg carry;
	integer i;
	begin
	    carry=0;
		for(i=0;i<4;i=i+1) begin
		s[i]=a[i]^b[i]^carry;
		carry= a[i]&b[i] | a[i]&carry | y[i]&carry;
		end
	    s[4]=carry;
	end
	endtask

	initial begin
	a=4'b1100;
	b=4'b0101;

	serial_add(a,b,sum);
	$display("a=%b,b=%b,sum=%b (%0d)",a,b,sum,sum);
	end
endmodule
