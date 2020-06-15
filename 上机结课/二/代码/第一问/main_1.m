A = 444.128;
a=50*sqrt(2)*pi;
w0=50*sqrt(2)*pi;
Tp = 64/1000;%�۲�ʱ��
T1 = 1/1000;
T2 = 1/300;
T3 = 1/200;
N1=0:Tp*1000-1;N2=0:Tp*300-1;N3=0:Tp*200-1;%����x��N1��N2��N3
x1=A*exp(-a*N1*T1).*sin(w0*N1*T1);%������������x1(n)
x2=A*exp(-a*N2*T2).*sin(w0*N2*T2);%������������x2��n��
x3=A*exp(-a*N3*T3).*sin(w0*N3*T3);%������������x3��n��
%����Ƶ�ʲ�ͬ,�任������ͬ,N= fs*tp 
M1 = Tp*1000;%�任����
M2 = Tp*300;
M3 = Tp*200;
y1=fft(x1,M1);%��������x1��n����FFT�任
y2=fft(x2,M2);%��������x2��n����FFT�任
y3=fft(x3,M3);%��������x3��n����FFT�任
w1 = (0:M1-1)/Tp;
subplot(3,1,1)
stem(w1 ,abs(y1))%����Ƶ��Ϊ1000Hz
xlabel('Hz')
ylabel('��Ƶ��Ӧ')
title('����Ƶ��Ϊ1000Hz')
subplot(3,1,2)
w2 = (0:M2-1)/Tp;
stem(w2,abs(y2))%����Ƶ��Ϊ300Hz
xlabel('Hz')
ylabel('��Ƶ��Ӧ')
title('����Ƶ��Ϊ300Hz')
subplot(3,1,3)
w3 = (0:M3-1)/Tp;
stem(w3,abs(y3))%����Ƶ��Ϊ200Hz
xlabel('Hz')
ylabel('��Ƶ��Ӧ')
title('����Ƶ��Ϊ200Hz')

