module full_adder(a,b,c_in,sum,c_out);
input [3:0] a,b;
input c_in;
output [3:0] sum;
output c_out;
assign {sum,c_out}=a+b+c_in;
endmodule
