xt=xtg();%�������������ź�
N = 1000;Fs = 1000;
fcuts = [0.24  0.3];
%��һ��Ƶ��omega/pi ����ָͨ����ֹƵ�ʡ������ʼƵ��
mags = [1 0];
% mags = [1 0]Ϊ��fָ���ĸ���Ƶ���ϵķ�ֵ������һ��ֻ��0��1��ʾ
devs = [0.01 10^(-2.5)];
%����ָ������Ƶ������˲�����Ƶ����Ӧ����������ֵ֮�������������ƫ��
[n,Wn,beta,ftype] = kaiserord(fcuts,mags,devs);  %�����������N��beta��ֵ
hh= fir1(n,Wn,ftype,kaiser(n+1,beta),'noscale');%��ƿ�����
[hh1,w1]=freqz(hh,1,1024);%ϵͳƵ����Ӧ
figure
subplot(3,1,1)
plot(w1*Fs/2/pi,abs(hh1))%%�۲촰������Ƶ����Ӧ
xlabel('f/Hz');title('��������Ƶ����Ӧ');
subplot(3,1,2)
plot(w1*Fs/2/pi,20*log10(abs(hh1)))%%����˥��ͼ
xlabel('f/Hz');title('������˥������');
subplot(3,1,3)
yt=fftfilt(hh,xt);  %���ú���fftfilt��xt�˲�
T = 1/Fs;
t=0:T:(N-1)*T;
plot(t,yt)%%�۲��˲����
xlabel('f/Hz');title('���ô������˲����');