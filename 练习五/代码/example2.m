% ͨ���߽�Ƶ��fc=800Hz������߽�fr=1000Hz��
% ͨ������  �����С˥��At=40dB������Ƶ��fs=4000Hz��
%�ȼ����ͨ���������������
fedge=[800 1000]; 
	mval=[1 0]; 
	dev=[0.0559 0.01];
       fs=4000; 
	[N,fpts,mag,wt]=remezord(fedge,mval,dev,fs); 
    %��remezord���������remez����Ҫ�õ��Ľ�n����һ��Ƶ����Եʸ��fpts��Ƶ���ڷ�ֵ��Ӧʸ��mag����Ȩʸ��w��b=remez(N,fpts,mag,wt); 
	[h,w]=freqz(b,1,256); %����Ƶ����Ӧ������Ƶ��
	plot(w*2000/pi,20*log10(abs(h))); %x��ת��Ϊģ��Ƶ��
	grid; 
  xlabel('Ƶ��/Hz') ;
	 ylabel('����/dB');
