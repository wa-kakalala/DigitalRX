clc ;
close all;

% %IQ 信号产生
N = 1024*64;
snr=40; 
% %采样率
fs = 204.8e6; 
% %产生0~130Mhz的三个随机频点
s=[30e6 30.3e6 40e6]
fc1=s(1,1);
fc2=s(1,2);
fc3=s(1,3);

t=0:1/fs:(N-1)/fs;
f=-fs/2:fs/N:fs/2-fs/N;

value_db1= -15;
value_db2= -10;
value_db3= -20;

signal_Amp0= 10^(value_db1/20);
signal_I0 = signal_Amp0*cos(2*pi*fc1*t);
signal_Q0 = signal_Amp0*sin(2*pi*fc1*t);
signal_Amp1=  10^(value_db2/20);
signal_I1=  signal_Amp1*cos(2*pi*fc2*t);
signal_Q1 = signal_Amp1*sin(2*pi*fc2*t);
signal_Amp2=  10^(value_db3/20);
signal_I2=  signal_Amp1*cos(2*pi*fc3*t);
signal_Q2 = signal_Amp1*sin(2*pi*fc3*t);

signal_I=signal_I0+signal_I1+signal_I2;
signal_Q=signal_Q0+signal_Q1+signal_Q2;
data_I_awg = awgn(signal_I,snr,'measured');
data_Q_awg=  awgn(signal_Q,snr,'measured');
signal_complex = data_I_awg + 1i* data_Q_awg;


%IQ信号定点到24bit
signal_fi_I = fi(data_I_awg,1,24,20);
signal_fi_Q = fi(data_Q_awg,1,24,20);
 
% 对时域的IQ数据完成分帧功能
fft_length = 1024;
fram_num = floor(N/fft_length);
for i = 1:fram_num
    I(i,:) =  signal_fi_I((i-1)*fft_length+1:(i-1)*fft_length+fft_length);
    Q(i,:) =  signal_fi_Q((i-1)*fft_length+1:(i-1)*fft_length+fft_length);
 end


% 生成txt文件用于vivado仿真
fid=fopen('signalIcomv1.txt','w'); 
for k = 1:length(signal_fi_I)
    temp_In = signal_fi_I(k);  
    fprintf(fid,'%s\r\n', temp_In.hex);    
end 
fclose(fid);

fid=fopen('signalQcomv1.txt','w'); 
for k = 1:length(signal_fi_Q)
    temp_In = signal_fi_Q(k);  
    fprintf(fid,'%s\r\n', temp_In.hex);    
end 
fclose(fid);
figure(1);

Ns = 2048;
f_index=(-0.5:1/(Ns):0.5-1/(Ns))*fs ; 
psd = fftshift(abs(fft(signal_complex(1:Ns),Ns)));
plot(f_index,(20*log10(psd)),'g');
title("频谱图");
xlabel("频率(Hz)");
ylabel("幅度");