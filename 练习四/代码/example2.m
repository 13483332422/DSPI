k=256;
	num=[0.8 -0.44 0.36 0.02];%����ϵ�� (xϵ��)
	den=[1 0.7 -0.45 -0.6];%��ĸϵ�� (yϵ��)
	w=0:pi/k:pi;
	h=freqz(num,den,w);%���ϵͳ������Ƶ����Ӧ
    %freqz(num,den,w) ֱ��������仰����ʾ������Ӧ����λ��Ӧ
subplot(2,2,1);
	plot(w/pi,real(h));grid
	title('ʵ��')
	xlabel('\omega/\pi');ylabel('����')
	subplot(2,2,2);
	plot(w/pi,imag(h));grid
	title('�鲿')
	xlabel('\omega/\pi');ylabel('Amplitude')
	subplot(2,2,3);
	plot(w/pi,abs(h));grid
	title('������')
	xlabel('\omega/\pi');ylabel('��ֵ')
	subplot(2,2,4);
	plot(w/pi,angle(h));grid
	title('��λ��')
		xlabel('\omega/\pi');ylabel('����') 
