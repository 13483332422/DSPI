% һ��	˫���Ա任������������ԭ�ͣ���
fs = 10000;
ws1=2*10000*tan(0.3*pi/2);
ws2=2*10000*tan(0.8*pi/2);
wp1=2*10000*tan(0.45*pi/2);
wp2=2*10000*tan(0.65*pi/2);
ws=[ws1 ws2];wp=[wp1 wp2];
Rp=1;Rs=40;
[N,Wn]=buttord(wp,ws,Rp,Rs,'s');%����'s'ȥ����һ��Ƶ������
[num,den]=butter(N,Wn,'s');%����'s'ȥ����һ��Ƶ������
[B,A]=bilinear(num,den,10000); %˫���Ա任
[h,w]=freqz(B,A);%����Ƶ����Ӧ������Ƶ��
f=w/pi*5000;%ת��Ϊģ��Ƶ��
subplot (2,1,1);
plot(f,20*log10(abs(h))); 
axis([0,5000,-60,10]);
grid; xlabel('Ƶ��/Hz') ;ylabel('����/dB');
subplot(2,1,2);
plot(f,angle(h));
grid; xlabel('Ƶ��/Hz') ;ylabel('��λ');
