module encoder_if_tb;
  
  wire [3:0] Binary_out_tb;
  reg [15:0] Encoder_in_tb;
  reg [0:0]Enable_tb;
  
  //instantiate
  encoder_use_if my_encoder (.binary_out_dut(Binary_out_tb),.encoder_in_dut(Encoder_in_tb),.enable_dut(Enable_tb));
  integer i;     
  
   initial
      begin
        
        // Dump waves
    $dumpfile("dump.vcd");
    $dumpvars(1);
        
        for( i = 0; i <= 2; i = i + 1)
         begin
          Enable_tb=i;
           Encoder_in_tb = 1;
           #50;
           Encoder_in_tb =2 ;
           #50;
           Encoder_in_tb =3;
           #50;
           Encoder_in_tb = 4;
           #50;
           Encoder_in_tb =5 ;
           #50;
           Encoder_in_tb =6;
           #50;
           Encoder_in_tb = 7;
           #50;
           Encoder_in_tb =8;
           #50;
           Encoder_in_tb =9;
           #50;
           Encoder_in_tb = 10;
           #50;
           Encoder_in_tb =11 ;
           #50;
           Encoder_in_tb =12;
           #50;
           Encoder_in_tb = 13;
           #50;
           Encoder_in_tb =14 ;
           #50;
           Encoder_in_tb =15;
           #50;
          
         end
      end
     
endmodule 
