module encoder_use_if (binary_out_dut, encoder_in_dut, enable_dut);
  
  input wire [15:0] encoder_in_dut;
  input wire [0:0]enable_dut;
  output reg [3:0] binary_out_dut;
  
  always@(binary_out_dut or enable_dut)
    begin
      $display(" BEFORE time = %d ",$time ); 
      binary_out_dut = 0;
      if (enable_dut) begin
        if (encoder_in_dut[0] == 1) begin
            binary_out_dut= 1;
        end else if (encoder_in_dut[1] == 1) begin
            binary_out_dut= 2;
        end else if (encoder_in_dut[2] == 1) begin
            binary_out_dut = 3;
        end else if (encoder_in_dut[3] == 1) begin
            binary_out_dut = 4;
        end else if (encoder_in_dut[4] == 1) begin
            binary_out_dut = 5;
        end else  if (encoder_in_dut[5] == 1) begin
            binary_out_dut = 6;
        end else if (encoder_in_dut[6] == 1) begin
            binary_out_dut =7;
        end else  if (encoder_in_dut[7] == 1) begin
            binary_out_dut =8;
        end else if (encoder_in_dut[8] == 1) begin
            binary_out_dut =9;
        end else if (encoder_in_dut[9] == 1) begin
            binary_out_dut =10;
        end else if (encoder_in_dut[10] == 1) begin
            binary_out_dut = 11;
        end else if (encoder_in_dut[11] == 1) begin
            binary_out_dut = 12;
        end else if (encoder_in_dut[12] == 1) begin
            binary_out_dut = 13;
        end else if (encoder_in_dut[13] == 1) begin
            binary_out_dut = 14;
        end else if (encoder_in_dut[14] == 1) begin
            binary_out_dut = 15;
              $display(" AFTER time = %d ",$time );
           end
        end
    end
endmodule
