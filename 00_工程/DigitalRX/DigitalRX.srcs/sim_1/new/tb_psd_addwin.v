`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: wkk
// Create Date: 2023/09/27 20:28:50
// Module Name: tb_psd_addwin
//////////////////////////////////////////////////////////////////////////////////

module tb_psd_addwin();
 reg               clk_in              ; 
 reg               rst_n               ;
 wire  [15:0]      win_coe_addr        ;
 wire  [15:0]      win_coe_data        ;    
 
 reg   [15:0]      data_i_in           ;
 reg   [15:0]      data_q_in           ;
 
 reg               data_in_valid       ;
 reg               data_in_last        ;
 
 wire  [47:0]      data_iq_out         ;
 wire              data_iq_out_valid   ;
 wire              data_iq_out_last    ;
 
 
 parameter        FRAME_LEN    = 1024;

ram_win_coe ram_win_coe_inst (
  .clka         (       ),      // input wire clka
  .wea          (       ),      // input wire [0 : 0] wea
  .addra        (       ),      // input wire [15 : 0] addra
  .dina         (       ),      // input wire [15 : 0] dina
  
  .clkb         (clk_in        ),    // input wire clkb
  .addrb        (win_coe_addr  ),    // input wire [15 : 0] addrb
  .doutb        (win_coe_data  )     // output wire [15 : 0] doutb
);

psd_addwin psd_addwin_inst (
    .clk_in              (  clk_in            ),
    .rst_n               (  rst_n             ),

    .data_i_in           (  data_i_in         ),
    .data_q_in           (  data_q_in         ),
    .data_in_valid       (  data_in_valid     ),
    .data_in_last        (  data_in_last      ),

    .win_coe_data        ( win_coe_data       ),
    .win_coe_addr        ( win_coe_addr       ),      // 窗系数地址

    .data_iq_out         ( data_iq_out        ),
    .data_iq_out_valid   ( data_iq_out_valid  ),
    .data_iq_out_last    ( data_iq_out_last   )     
);

initial  begin
    clk_in        =     1'b1;
    rst_n         =     1'b0;
    data_i_in     =     16'b0;
    data_q_in     =     16'b0;
    data_in_valid =     1'b0;
    data_in_last  =     1'b0;
   
    forever #5 clk_in = ~clk_in;
end

integer index = 0;
initial begin
    #10 rst_n =1'b1;
    for( index = 0;index < FRAME_LEN *2 ;index = index +1 ) begin
        #10 
        data_i_in = data_i_in + 1'b1;
        data_q_in = data_q_in + 2'b10;
        data_in_valid = 1'b1;
        if( (index+1) % FRAME_LEN == 0 ) begin
            data_in_last <= 1'b1;
        end else begin
            data_in_last <= 1'b0;
        end
    end
    
    # 1000 $stop;
end


// 以下部分为测试乘法器的延迟时间
// 测试结果: 3个周期可以出结果
/*
reg           clk_in          ;
reg  [15:0]   data_in_a       ;
reg  [15:0]   data_in_b       ;
wire [31:0]   data_out        ;

win_multipiler win_multipiler_inst (
  .CLK(clk_in),             // input wire CLK
  .A(data_in_a),      // input wire [15 : 0] A
  .B(data_in_b),      // input wire [15 : 0] B   unsigned 
  .P(data_out )      // output wire [31 : 0] P
);

initial begin
    clk_in            = 1'b1;
    data_in_a         = 16'b0;
    data_in_b         = 16'b0;
    forever #5 clk_in = ~clk_in;
end

initial begin
    #20 data_in_a = 5; data_in_b = 4;
    
    #200 $stop;
end
*/

endmodule
