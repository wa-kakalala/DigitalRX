`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: wkk
// Create Date: 2023/09/26 23:12:54
// Module Name: tb_psd_overlap
//////////////////////////////////////////////////////////////////////////////////

module tb_psd_overlap();

reg              clk_in             ;
reg              rst_n              ;

reg   [15:0]    data_i_in           ;
reg   [15:0]    data_q_in           ;
reg             data_in_valid       ;

reg   [4:0 ]    frame_len           ;
reg             frame_len_valid     ;

wire   [15:0]    data_i_out         ;
wire   [15:0]    data_q_out         ;
wire             data_out_valid     ;
wire             data_out_last      ;


psd_overlap psd_overlap_inst (
    .clk_in             (clk_in       ),
    .rst_n              (rst_n        ),
    .data_i_in          (data_i_in    ),
    .data_q_in          (data_q_in    ),
    .data_in_valid      (data_in_valid),

    .frame_len          (frame_len        ),
    .frame_len_valid    (frame_len_valid  ), 
    .overlap_len        (15'b0            ),
    .overlap_len_valid  (1'b0             ),

    .data_i_out         (data_i_out    ),
    .data_q_out         (data_q_out    ),
    .data_out_valid     (data_out_valid),
    .data_out_last      (data_out_last )
);

initial  begin
    rst_n            = 1'b0     ;
    clk_in           = 1'b1     ;
    data_i_in        = 16'b0    ;
    data_q_in        = 16'b0    ;
    data_in_valid    = 1'b0     ;
    frame_len        = 5'b0     ;
    frame_len_valid  = 1'b0     ;
    
    forever  #5 clk_in  = ~clk_in;
end

integer i  ;
initial begin
    #20 rst_n = 1'b1;
    
    #10 frame_len = 5'd4; frame_len_valid = 1'b1;  // 2^4 = 16 点
    #10 frame_len_valid = 1'b0;
    
    for( i = 0;i<1024;i=i+1) begin
        #10
        data_i_in = data_i_in+1;
        data_q_in = data_q_in+1;
        data_in_valid =1'b1;
    end
    
    for( i = 0;i<10;i=i+1) begin
        #10 data_in_valid =1'b0; // 停10个周期
    end
    
     for( i = 0;i<1024;i=i+1) begin
        #10
        data_i_in = data_i_in+1;
        data_q_in = data_q_in+1;
        data_in_valid =1'b1;
    end
    #10000 $stop;
end
endmodule
