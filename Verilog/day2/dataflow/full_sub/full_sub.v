module full_sub(a,b,bin,diff,borrow);
input a,b,bin;
output diff,borrow;
wire w1,w2,w3;

xor(w1,a,b);
xor(diff,w1,bin);
and(w2,~a,b);
and(w3,~w1,bin);
or(borrow,w2,w3);

endmodule
