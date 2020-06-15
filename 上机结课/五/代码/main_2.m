xt=xtg();%�������������ź�
N = 1000;Fs = 1000;
fcuts = [0.24  0.3];
%��һ��Ƶ��omega/pi ����ָͨ����ֹƵ�ʡ������ʼƵ��
mags = [1 0];
% mags = [1 0]Ϊ��fָ���ĸ���Ƶ���ϵķ�ֵ������һ��ֻ��0��1��ʾ
devs = [0.01 10^(-2.5)];
%����ָ������Ƶ������˲�����Ƶ����Ӧ����������ֵ֮�������������ƫ��
 [n,fpts,mag,wt]=remezord(fcuts,mags,devs);%�������
 h2=remez(n,fpts,mag,wt);
[hh2,w2]=freqz(h2,1,1024);%ϵͳƵ����Ӧ
figure
subplot(3,1,1)
plot(w2*Fs/2/pi,abs(hh2))%%�۲�Ȳ����˲�����Ƶ����Ӧ
xlabel('f/Hz');title('�Ȳ����˲�����Ƶ����Ӧ');
subplot(3,1,2)
plot(w2*Fs/2/pi,20*log10(abs(hh2)))%%����˥��ͼ
xlabel('f/Hz');title('�Ȳ����˲���˥������');
subplot(3,1,3)
yt=fftfilt(h2,xt);  %���ú���fftfilt��xt�˲�
T = 1/Fs;
t=0:T:(N-1)*T;
plot(t,yt)%%�۲��˲����
xlabel('t/s');title('���õȲ����˲����˲����');