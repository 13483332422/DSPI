%��·�����źŵ��ز�Ƶ�ʷֱ���250hz 500hz 1000hz ����ֱ�Ϊ50hz 100hz 200hz
Fs=10000;%����Ƶ��
T=1/Fs;
st = mstg;
%��ͨ�˲���
fp=300;fs=400;%ͨ��������߽�
wp=2*fp/Fs;ws=2*fs/Fs;%����ָ��
rp=0.1;rs=60;%ͨ�����˥��,�����С˥��
[N,wp]=ellipord(wp,ws,rp,rs);%����ellipord ������ԲDF����N��ͨ����ֹƵ��p
[B,A]=ellip(N,rp,rs,wp);%����ellip������Բ��ͨDFϵͳ����ϵ������B��A 
y1 = filter(B,A,st);%�˲�
[h,w] = freqz(B,A,1024);%�����˲�����Ƶ����Ӧ��Ƶ��������
m =abs(h);
figure
subplot(3,2,1)
plot(w*Fs/2/pi,20*(log10(m/max(m))));%����˥��ͼ
axis([0 1200 -120 10])
set(gca,'XTick',[0:200:1200]);
set(gca,'YTick',[-120:30:10]);%���������᷶Χ
xlabel('Ƶ��');ylabel('˥������')
grid on;
subplot(3,2,2)
n = 0:length(y1)-1;
t = n*T;
plot(t,y1) 
xlabel('ʱ��');title('��ͨ�˲����')
grid on;
%��ͨ�˲���
fp1=400;fp2=600;%ͨ���߽�
fs1=300;fs2=700;%����߽�
wp=[2*fp1/Fs,2*fp2/Fs];%����ָ��
ws=[2*fs1/Fs,2*fs2/Fs];%����ָ��
rp=0.1;rs=60;
[N,wp]=ellipord(wp,ws,rp,rs);%����ellipord ������ԲDF����N��ͨ����ֹƵ��wp
[B,A]=ellip(N,rp,rs,wp);%����ellip������Բ��ͨDFϵͳ����ϵ������B��A 
y2=filter(B,A,st);%�˲�
[h,w] = freqz(B,A,1024);%�����˲�����Ƶ����Ӧ��Ƶ��������
m =abs(h);
subplot(3,2,3)
plot(w*Fs/2/pi,20*(log10(m/max(m))));%����˥��ͼ
axis([0 1200 -120 10])
set(gca,'XTick',[0:200:1200]);
set(gca,'YTick',[-120:30:10]);%���������᷶Χ
xlabel('Ƶ��');ylabel('˥������')
grid on;
subplot(3,2,4)
n = 0:length(y2)-1;
t = n*T;
plot(t,y2) 
xlabel('ʱ��');title('��ͨ�˲����')
grid on;
%��ͨ�˲���
fp=800;fs=600;%ͨ���߽������߽�
wp=2*fp/Fs;ws=2*fs/Fs;
rp=0.1;rs=60;%ͨ�����˥��,�����С˥��
[N,wp]=ellipord(wp,ws,rp,rs);%����ellipord ������ԲDF����N��ͨ����ֹƵ��p
[B,A]=ellip(N,rp,rs,wp,'high');%����ellip������Բ��ͨDFϵͳ����ϵ������B��A 
y3 = filter(B,A,st);%�˲�
[h,w] = freqz(B,A,1024);%�����˲�����Ƶ����Ӧ��Ƶ��������
m =abs(h);
subplot(3,2,5)
plot(w*Fs/2/pi,20*(log10(m/max(m))));%����˥��ͼ
axis([0 1200 -120 10])
set(gca,'XTick',[0:200:1200]);
set(gca,'YTick',[-120:30:10]);%���������᷶Χ
xlabel('Ƶ��');ylabel('˥������')
grid on;
subplot(3,2,6)
n = 0:length(y3)-1;
t = n*T;
plot(t,y3) 
xlabel('ʱ��');title('��ͨ�˲����')
grid on;
