module jk_ff(input clk,rst,j,k,output reg q,output qbar);

always@(posedge clk or posedge rst)begin
if (rst)
q<=0;
else begin
case({j,k})
     2'b00:q<=q;
     2'b01:q<=0;
     2'b10:q<=1;
     2'b11:q<=~q;
default:q<=1'b0;
endcase
end
end
assign qbar=~q;
endmodule
