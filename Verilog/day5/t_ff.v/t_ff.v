module t_ff(input clk,rst,t,output reg q,output qbar);

always @(posedge clk or posedge rst) begin
	if(rst)
		q<=0;
	else begin

	case(t)
	  1'b1:q=q;
	  1'b0:q=~q;
	  default:q=1'b0;
	endcase
	end 
end 
endmodule 
