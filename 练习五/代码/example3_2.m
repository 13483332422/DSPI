f=[0.3 0.45 0.65 0.8]
a=[0 1 0]
dev=[0.01 0.1087 0.01]
% �京��ͬ����[n,wn,bta,ftype]=kaiserord��f��a��dev��fs��
% �еĲ�����ͬ��                                 
 [n,fpts,mag,wt]=remezord([0.3 0.45 0.65 0.8],[0 1 0],[0.01 0.1087 0.01]);
 %��remezord���������remez����Ҫ�õ��Ľ�n����һ��Ƶ����Եʸ��fpts��
%  Ƶ���ڷ�ֵ��Ӧʸ��mag����Ȩʸ��w��ʹremez������Ƴ����˲�������f��a��devָ��������Ҫ��
 h2=remez(n,fpts,mag,wt);%��Ƴ��Ȳ����˲���
 [hh2,w2]=freqz(h2,1,256);%����Ƶ����Ӧ������Ƶ��
 figure(2)
 subplot(2,1,1)
 plot(w2/pi,20*log10(abs(hh2)))%����Ƶ�ʹ�һ��
 grid
 xlabel('��һ��Ƶ��w');ylabel('����/db');
subplot(2,1,2)
 plot(w2/pi,angle(hh2))
 grid
 xlabel('��һ��Ƶ��w');ylabel('��λ/rad');
