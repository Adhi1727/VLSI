module reg_array_gen;
    reg [7:0] reg_array [0:7];  

    genvar i;
    generate
        for (i = 0; i < 8; i = i + 1) begin : init_block
            initial reg_array[i] = i;   
        end
    endgenerate

    initial begin
        $display("Register Array Contents:");
        $monitor("reg_array[0]=%0d reg_array[1]=%0d reg_array[2]=%0d reg_array[3]=%0d reg_array[4]=%0d reg_array[5]=%0d reg_array[6]=%0d reg_array[7]=%0d", 
                  reg_array[0], reg_array[1], reg_array[2], reg_array[3],
                  reg_array[4], reg_array[5], reg_array[6], reg_array[7]);
        #10 $finish;
    end
endmodule
