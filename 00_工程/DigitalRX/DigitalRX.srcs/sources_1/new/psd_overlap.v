`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: wkk
// Create Date: 2023/09/26 14:14:52
// Module Name: psd_overlap
//////////////////////////////////////////////////////////////////////////////////

// 暂时只有分帧的功能，没有交叠的功能
module psd_overlap #(
    parameter       DATA_WIDTH        =  5'd16    ,        
    parameter       FRAME_WIDTH       =  5'd16    ,
    parameter       OVERLAP_WIDTH     = 4'd15    ,    
    parameter       FRAME_LEN_DEFAULT = 17'd65536 ,
    parameter       OVERLAP_DEFAULT   = 15'b0      
)(
    input                       clk_in             ,
    input                       rst_n              ,
    input   [DATA_WIDTH-1:0]    data_i_in          ,
    input   [DATA_WIDTH-1:0]    data_q_in          ,
    input                       data_in_valid      ,
    
    input   [4:0]               frame_len          ,
    input                       frame_len_valid    , 
    input   [OVERLAP_WIDTH-1:0] overlap_len        ,
    input                       overlap_len_valid  ,
    
    output  [DATA_WIDTH-1:0]    data_i_out         ,
    output  [DATA_WIDTH-1:0]    data_q_out         ,
    output                      data_out_valid     ,
    output                      data_out_last     
);

// 用于计数，输出last信号
reg    [FRAME_WIDTH-1:0]    frame_counter        ;
// 帧长度信息
reg    [FRAME_WIDTH-1:0]    config_frame_len     ;
// 交叠长度信息
reg    [OVERLAP_WIDTH-1:0]  config_overlap_len   ;

// 获取帧长度
always @ (posedge clk_in or negedge rst_n ) begin
    if( ! rst_n ) begin
       config_frame_len <= FRAME_LEN_DEFAULT -1;
    end 
    else if( frame_len_valid ) begin
       config_frame_len <= ( 16'b1<< frame_len  ) -1;
    end else begin
       config_frame_len <= config_frame_len;
    end
end

// 获取交叠长度
always @ (posedge clk_in or negedge rst_n ) begin
    if( ! rst_n ) begin
       config_overlap_len <= OVERLAP_DEFAULT;
    end 
    else if( config_overlap_len ) begin
       config_overlap_len <= overlap_len;
    end else begin
       config_overlap_len <= config_overlap_len;
    end
end

// 计数
always @ (posedge clk_in or negedge rst_n ) begin
     if( ! rst_n ) begin
        frame_counter <= {FRAME_WIDTH{1'b1}};
     end 
     else if( data_in_valid ) begin
        if( frame_counter == config_frame_len ) begin
            frame_counter <= {FRAME_WIDTH{1'b0}};
        end else begin
            frame_counter <= frame_counter + 1'b1;
        end
     end 
     else begin
        frame_counter <= frame_counter;
     end
end

assign data_out_last  = ( frame_counter == config_frame_len &&  data_in_valid)?1'b1 : 1'b0;
assign data_i_out     = data_i_in;
assign data_q_out     = data_q_in;
assign data_out_valid = data_in_valid;
endmodule
