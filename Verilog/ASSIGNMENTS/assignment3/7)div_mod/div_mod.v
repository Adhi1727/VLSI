module  behavior();
reg signed[3:0] a,b;
reg [3:0]ua,ub;
integer i1,i2,i3,i4;

initial begin

a=-12; b=12;

i1=a/b;
i2=a%b;

ua=2; ub=1;

i3=ua/ub;
i4=ua%ub;

$display("signed:a=%0d,b=%0d, a/b=%0d a%%b=%0d",a,b,i1,i2);
$display("unsigned:ua=%0d,ub=%0d, ua/ub=%0d ua%%ub=%0d",ua,ub,i3,i3);

end
endmodule
