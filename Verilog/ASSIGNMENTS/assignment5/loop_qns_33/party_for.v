module party_for;
reg [7:0] data;
reg parity;
integer i;

	  initial begin
    data = 8'b1010_1100;   
    parity = 0;

    
    for (i = 0; i < 8; i = i + 1) begin
      parity = parity ^ data[i];
    end

    $display("Data   = %b", data);
    $display("Parity = %b", parity);
    $finish;
  end
endmodule
