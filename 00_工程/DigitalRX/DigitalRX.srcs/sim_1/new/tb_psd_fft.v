`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Engineer: wkk
// Create Date: 2023/09/28 09:38:30
// Module Name: tb_psd_fft
//////////////////////////////////////////////////////////////////////////////////

`define CLK_PERIORD		10		//时钟周期设置为10ns（100MHz）	
module tb_psd_fft();

//接口声明
reg 		  clk;
reg 		  rst_n;
reg[4:0]	  s_axis_config_tdata;
reg           s_axis_config_tvalid;
 
wire          s_axis_data_tready; 
reg[47:0]     s_axis_data_tdata;  //输入的16位数据 16*2
reg           s_axis_data_tvalid; //拉高4096个周期，输入4096个数据进行fft
reg           s_axis_data_tlast;  //输入4096个数据后拉高，停止数据输入
 
wire[79:0]    m_axis_data_tdata;
wire[39:0]    fft_re_out;
wire[15:0]    m_axis_data_tuser;
wire          m_axis_data_tvalid;
reg           m_axis_data_tready;
wire          m_axis_data_tlast;	

wire [47:0]        fft_data_out;
wire [15:0]        fft_data_out_index;
wire               fft_data_out_valid;
wire               fft_data_out_last;
 
assign fft_re_out = m_axis_data_tdata[39:0];
parameter   IQ_Len          =                   4096	;	
reg [23:0]                  I_Data [IQ_Len-1:0] ;     //24bit,32768deep
reg [23:0]                  Q_Data [IQ_Len-1:0] ;     //24bit,32768deep	
initial $readmemh("C:\\Users\\Freya\\Desktop\\signalIcomv1.txt",I_Data);
initial $readmemh("C:\\Users\\Freya\\Desktop\\signalQcomv1.txt",Q_Data);
//对被测试的设计进行例化

psd_fft  u_psd_fft (
    .clk_in                  ( clk               ),
    .rst_n                   ( rst_n                ),
    .data_iq_in              ( s_axis_data_tdata     ),
    .data_iq_in_valid        ( s_axis_data_tvalid     ),
    .data_iq_in_ready        ( s_axis_data_tready     ),
    .data_iq_in_last         ( s_axis_data_tlast      ),
    .frame_len               ( s_axis_config_tdata            ),
    .frame_len_valid         ( s_axis_config_tvalid      ),

    .fft_data_out            ( fft_data_out         ),
    .fft_data_out_index      ( fft_data_out_index   ),
    .fft_data_out_valid      ( fft_data_out_valid   ),
    .fft_data_out_last       ( fft_data_out_last    ) 
);

//时钟产生
always #(`CLK_PERIORD/2) clk = ~clk;	

//测试激励产生
integer i;
integer start_flag ;
integer fid_im_re;
	
//复位和时钟产生
//时钟和复位初始化、复位产生
initial begin
    clk = 0;
	rst_n = 0;
    s_axis_config_tdata = 16'b0;
	s_axis_config_tvalid = 1'b0;	
	s_axis_data_tvalid = 1'b0;
	s_axis_data_tdata = 48'b0;
	s_axis_data_tlast = 1'b0;
	
	m_axis_data_tready = 1'b0;
	
	i = 0;
	start_flag = 1;
	#(`CLK_PERIORD *2);
	rst_n = 1;
	#(`CLK_PERIORD *3);

	m_axis_data_tready = 1'b1;
	s_axis_config_tvalid = 1;
	s_axis_config_tdata = 5'd12; 
	#`CLK_PERIORD
	s_axis_config_tvalid = 0;
	#150000;
	$fclose(fid_im_re);
	$stop;
end
 
always @(posedge clk)
begin
  if(s_axis_data_tready && start_flag == 1 && ~s_axis_config_tvalid) begin
       i <= i + 1;
       s_axis_data_tdata <={Q_Data[i],I_Data[i]};
       
       if( i< IQ_Len-1 ) begin
           s_axis_data_tlast <= 1'b0;
           s_axis_data_tvalid <= 1'b1;
       end
       else if(i == IQ_Len-1) begin 
         s_axis_data_tlast <= 1'b1;
         s_axis_data_tvalid <= 1'b1;
       end
       else if(i > IQ_Len-1) begin
          i <= 0;
          start_flag = 0;
          s_axis_data_tlast <= 1'b0;
          s_axis_data_tvalid <= 1'b0;
       end
  end 
  else begin
       i <= 0;
       s_axis_data_tvalid <= 1'b0;
       s_axis_data_tlast <= 1'b0;
       s_axis_data_tdata <= 48'b0;
  end
  
end

initial begin
    fid_im_re = $fopen("fft_im_re_4096.txt");
end

always @ (posedge clk) begin
    if(m_axis_data_tvalid)
	    $fwrite(fid_im_re,"%d\t%d\t%d\n",$signed(m_axis_data_tuser),$signed(m_axis_data_tdata[79:40]),$signed(m_axis_data_tdata[39:0]));
end
 
endmodule

