`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: wkk
// Create Date: 2023/09/27 03:21:42
// Module Name: psd_addwin
//////////////////////////////////////////////////////////////////////////////////

module psd_addwin # (
    parameter DATA_WIDTH         =     16                  , 
    parameter WIN_COE_WIDTH      =     16                  ,
    parameter WIN_COE_ADDR_WIDTH =     16                  ,
    parameter DATA_IQ_WIDTH      =     48
)(
    input                              clk_in              ,
    input                              rst_n               ,
    
    input   [DATA_WIDTH-1:0]           data_i_in           ,
    input   [DATA_WIDTH-1:0]           data_q_in           ,
    input                              data_in_valid       ,
    input                              data_in_last        ,
    
    input   [WIN_COE_WIDTH-1:0]        win_coe_data        ,
    output  [WIN_COE_ADDR_WIDTH-1:0]   win_coe_addr        ,      // 窗系数地址
    
    output  [DATA_IQ_WIDTH-1:0]        data_iq_out         ,
    output                             data_iq_out_valid   ,
    output                             data_iq_out_last         
);

reg   [WIN_COE_ADDR_WIDTH-1:0]      win_coe_addr_reg   ;
reg                                 start_en           ;
// 生成窗系数地址, 按字节寻址
always @(posedge clk_in or negedge rst_n ) begin
    if( !rst_n ) begin
        win_coe_addr_reg <= {WIN_COE_ADDR_WIDTH{1'b1}};
    end
    else if( data_in_valid ) begin 
        if( data_in_last ) begin  // 已经到最后一个数据
            win_coe_addr_reg <= {WIN_COE_ADDR_WIDTH{1'b0}};  // 清零
        end
        else begin
            win_coe_addr_reg <= win_coe_addr_reg + 1'd1;    // 32bit -> 4 bytes
        end
    end else begin
        win_coe_addr_reg <= win_coe_addr_reg;
    end
end

assign win_coe_addr = win_coe_addr_reg;

// 将进来的数据延迟两个节拍
// RAM有固定两个周期的延迟  
 reg   [DATA_WIDTH-1:0]           data_i_in_reg_1           ;
 reg   [DATA_WIDTH-1:0]           data_i_in_reg_2           ;
 reg   [DATA_WIDTH-1:0]           data_i_in_reg_3           ;
 
 reg   [DATA_WIDTH-1:0]           data_q_in_reg_1           ;
 reg   [DATA_WIDTH-1:0]           data_q_in_reg_2           ;
 reg   [DATA_WIDTH-1:0]           data_q_in_reg_3           ;
 
 
 reg   [5:0]             data_in_valid_regs                 ;
 reg   [5:0]             data_in_last_regs                 ;

 always @( posedge clk_in or negedge rst_n) begin
    if( !rst_n ) begin
        data_i_in_reg_1 <= {DATA_WIDTH{1'b0}};
        data_i_in_reg_2 <= {DATA_WIDTH{1'b0}};
        
        data_q_in_reg_1 <= {DATA_WIDTH{1'b0}};
        data_q_in_reg_2 <= {DATA_WIDTH{1'b0}};
        
        data_in_valid_regs <= 6'b0;
        data_in_last_regs  <= 6'b0;
    end else begin
        data_i_in_reg_1 <= data_i_in;
        data_i_in_reg_2 <= data_i_in_reg_1;
        data_i_in_reg_3 <= data_i_in_reg_2;
        
        data_q_in_reg_1 <= data_q_in;
        data_q_in_reg_2 <= data_q_in_reg_1;
        data_q_in_reg_3 <= data_q_in_reg_2;
        
        data_in_valid_regs <= {data_in_valid_regs[4:0],data_in_valid};
        data_in_last_regs  <= {data_in_last_regs[4:0],data_in_last};
    end
 end
 
wire   [DATA_WIDTH + WIN_COE_WIDTH-1:0]         win_mult_out_i;
wire   [DATA_WIDTH + WIN_COE_WIDTH-1:0]         win_mult_out_q;

// I 路数据加窗
win_multipiler win_multipiler_i (
  .CLK(clk_in),  // input wire CLK
  .A(data_i_in_reg_3),      // input wire [15 : 0] A
  .B(win_coe_data),      // input wire [15 : 0] B   unsigned 
  .P(win_mult_out_i)      // output wire [31 : 0] P
);

// Q 路数据加窗
win_multipiler win_multipiler_q (
  .CLK(clk_in),  // input wire CLK
  .A(data_q_in_reg_3),      // input wire [15 : 0] A
  .B(win_coe_data),      // input wire [15 : 0] B  unsigned
  .P(win_mult_out_q)      // output wire [31 : 0] P
);

assign  data_iq_out = {win_mult_out_q[31:8],win_mult_out_i[31:8]};  // 这里还需要改进
assign  data_iq_out_valid = data_in_valid_regs[5];
assign  data_iq_out_last  = data_in_last_regs[5];

endmodule
