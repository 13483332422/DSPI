%��ͨ�˲���
%wp1 = 0.45pi wp2=0.65pi ͨ�� ͨ����� ap <=1db
%ws1 = 0.3pi ws2=0.75pi ��� ������ as >=40
 [n,wn,bta,ftype]=kaiserord([0.3 0.45 0.65 0.8],[0 1 0],[0.01 0.1087 0.01]);%��kaiserord�������Ƴ��˲�������n��beta����
%  f=[0.3 0.45 0.65 0.8]Ϊ��Ӧ����Ƶ��
%  a=[0 1 0]Ϊ��fָ���ĸ���Ƶ���ϵķ�ֵ������
% devs=[0.01 0.1087 0.01]����ָ������Ƶ������˲���
% ��Ƶ����Ӧ����������ֵ֮�������������ƫ��
 h1=fir1(n,wn,ftype,kaiser(n+1,bta),'noscale');
[hh1,w1]=freqz(h1,1,256);%����Ƶ����Ӧ������Ƶ��
 figure(1)
subplot(2,1,1)
 plot(w1/pi,20*log10(abs(hh1)))%����Ƶ�ʹ�һ��
 grid
xlabel('��һ��Ƶ��w');ylabel('����/db');
subplot(2,1,2)
 plot(w1/pi,angle(hh1))
grid
xlabel('��һ��Ƶ��w');ylabel('��λ/rad');

 