%��д��7���ƽ��ϵͳ����
num=[1 1 1 1 1 1 1];
den=[7 0 0 0 0 0 0];
[z,p,k]=tf2zp(num,den); 
disp('���');disp(z);
disp('����');disp(p);
disp('����ϵ��');disp(k);
figure(1)
zplane(num,den)
figure(2)
freqz(num,den,128) 
