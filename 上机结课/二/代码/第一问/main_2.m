n = 0:26;
xn = (n+1).*(n>=0&n<=13)+(27-n).*(n>=14&n<=26);%x(n)
xk =fft(xn,256)%��256��fft���ƽ���Ƶ����Ӧ
xk1=fft(xn,32);%32��FFT
xk2 = fft(xn,16);%16��FFT
xn1 = ifft(xk1,32)%x32n
xn2 = ifft(xk1(1:2:27),16)%x16n
subplot(3,2,1)
plot(n,xn)%����x(n)
title('ԭʼx(n)����');
subplot(3,2,2)
k = 0:255;
plot(k,abs(xk))%Ĭ��x(k)
title('ԭʼx(n)���е�Ƶ����Ӧ');
subplot(3,2,3)
stem(0:31,xn1)%32��xn
title('Ƶ�����32������ָ���x(n)����');
subplot(3,2,4)
stem(0:31,abs(xk1))%32��fft
title('ʱ�����32�������x(n)Ƶ����Ӧ');
subplot(3,2,5)
stem(0:15,xn2)%16��xn
title('Ƶ�����16������ָ���x(n)����');
subplot(3,2,6)
stem(0:15,abs(xk2))%16��fft
title('ʱ�����16�������x(n)Ƶ����Ӧ');
