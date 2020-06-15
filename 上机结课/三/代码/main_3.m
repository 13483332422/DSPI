FS = 64;
N0 = 128;
n = 0:127;
x6n = cos(8*pi/FS*n)+cos(16*pi/FS*n)+cos(20*pi/FS*n);
N16 = 16;N32 = 32;N64 =64;
x6k16 = fft(x6n,N16);
x6k32 = fft(x6n,N32);
x6k64 = fft(x6n,N64);
x6k = fft(x6n,N0);
k0 = 0:127;k16 = 0:15;
k32 = 0:31;k64 = 0:63;
%�����ģ��Ƶ��
f0 = FS/N0*k0;f16 = FS/N16*k16;
f32 = FS/N32*k32;f64 = FS/N64*k64;
subplot(4,1,1)
stem(f0,abs(x6k))%fft�������е�Ƶ����Ӧ
title('ԭ����Ƶ��')
xlabel('Hz')
subplot(4,1,2)
stem(f16,abs(x6k16))
title('ԭ���н���16��DFTƵ��')
xlabel('Hz')
subplot(4,1,3)
stem(f32,abs(x6k32))
title('ԭ���н���32��DFTƵ��')
xlabel('Hz')
subplot(4,1,4)
stem(f64,abs(x6k64))
title('ԭ���н���64��DFTƵ��')
xlabel('Hz')