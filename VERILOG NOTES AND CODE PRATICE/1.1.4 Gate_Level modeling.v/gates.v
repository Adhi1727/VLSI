module gates(
input a,b,ctr,
output r_and,r_or,r_not,
output r_nand,r_nor,r_xor,r_xnor,r_buf,
output r_bufif1,r_notif1,
output r_bufif0,r_notif0
);

and(r_and,a,b); // Perform And operation output is "low" when anyone of the input is "low"
or(r_or,a,b); // Perform or operation output is "high" when anyone of the input is "high"
not(r_not,a); // Perform not operation output is "invert" of input

nand(r_nand,a,b); // Perform nand operation output is "invert" of And operation
nor(r_nor,a,b); // Perform nor operation output is "invert" of or operation
buf(r_buf,a); // Perform Buffer operation input drives to output with some small delay
xor(r_xor,a,b); // Perform xor operation output is "high" when input is "different"
xnor(r_xnor,a,b); // Perform xnor operation output is "invert" of xor gate

bufif1(r_bufif1,a,ctr);// Perform bufferif1 operation if control is 1 input drives to output ,if control 0 ouput is "z"
notif1(r_notif1,a,ctr);//Perform notif1 operation if control is 1 input drives to output ,if control 0 ouput is "z"

bufif0(r_bufif0,a,ctr);//Perform bufferif1 operation if control is 0 input drives to output ,if control 1 ouput is "z"
notif0(r_notif0,a,ctr);// Perform notif1 operation if control is 0 input drives to output,if control 1 ouput is "z"

endmodule


