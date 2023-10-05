`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: wkk
// Create Date: 2023/09/28 08:28:23
// Module Name: psd_fft
//////////////////////////////////////////////////////////////////////////////////
module psd_fft(
    input                   clk_in               ,
    input                   rst_n                ,
    input     [47:0]        data_iq_in           ,
    input                   data_iq_in_valid     ,
    input                   data_iq_in_last      ,
    
    input     [4:0]         frame_len            ,
    input                   frame_len_valid      ,
            
    output    [47:0]        fft_data_out         ,
    output    [15:0]        fft_data_out_index   ,
    output                  fft_data_out_valid   ,
    output                  fft_data_out_last
);

 reg            [15:0]                 fft_config       ;
 reg                                   fft_config_valid ;
 wire           [95:0]                 fft_data_out_full;
 
// config 格式说明
// [8:8] : ifft or fft
// [4:0] : nfft
always @( posedge clk_in or negedge rst_n ) begin
    if( !rst_n )  begin
        fft_config       <= 16'b0;
        fft_config_valid <= 1'b0;
    end 
    else if( frame_len_valid ) begin
        fft_config       <= {8'h01,3'h0,frame_len};
        fft_config_valid <= 1'b1;
    end else begin
        fft_config       <= fft_config;
        fft_config_valid <= 1'b0;
    end
end

xfft xfft_inst (
  .aclk                         (clk_in                 ),       // input wire aclk
  .aresetn                      (rst_n                  ),       // input wire aresetn
  .s_axis_config_tdata          (fft_config             ),       // input wire [15 : 0] s_axis_config_tdata
  .s_axis_config_tvalid         (fft_config_valid       ),       // input wire s_axis_config_tvalid
  .s_axis_config_tready         (                       ),       // output wire s_axis_config_tready
  .s_axis_data_tdata            (data_iq_in             ),       // input wire [47 : 0] s_axis_data_tdata
  .s_axis_data_tvalid           (data_iq_in_valid       ),       // input wire s_axis_data_tvalid
  .s_axis_data_tready           (                       ),       // output wire s_axis_data_tready
  .s_axis_data_tlast            (data_iq_in_last        ),       // input wire s_axis_data_tlast
  .m_axis_data_tdata            (fft_data_out_full      ),       // output wire [95 : 0] m_axis_data_tdata
  .m_axis_data_tuser            (fft_data_out_index     ),       // output wire [15 : 0] m_axis_data_tuser
  .m_axis_data_tvalid           (fft_data_out_valid     ),       // output wire m_axis_data_tvalid
  .m_axis_data_tready           (1'b1),                          // input wire m_axis_data_tready
  .m_axis_data_tlast            (fft_data_out_last      ),       // output wire m_axis_data_tlast
  .event_frame_started          (   ),                           // output wire event_frame_started
  .event_tlast_unexpected       (   ),                           // output wire event_tlast_unexpected
  .event_tlast_missing          (   ),                           // output wire event_tlast_missing
  .event_status_channel_halt    (   ),                           // output wire event_status_channel_halt
  .event_data_in_channel_halt   (   ),                           // output wire event_data_in_channel_halt
  .event_data_out_channel_halt  (   )                            // output wire event_data_out_channel_halt
);

//wire    [47:0]         fft_out_re;
//wire    [47:0]         fft_out_im;

//assign fft_out_re = fft_data_out_full[47:0];
//assign fft_out_im = fft_data_out_full[95:48];

assign fft_data_out= {fft_data_out_full[71:48], fft_data_out_full[23:0]};  //这里需要后面再修改
    
endmodule
