module count_one_for;
reg [3:0] vec;
reg [2:0] count;
integer i;


	  initial begin
    vec = 4'b1001;   
    count = 0;

   
    for (i = 0; i < 4; i = i + 1) begin
      if (vec[i] == 1)
        count = count + 1;
    end

    $display("Vector = %b, Number of 1s = %0d", vec, count);
    $finish;
  end
endmodule
