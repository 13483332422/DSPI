num=[0.0528 0.0797 0.1295 0.1295 0.797 0.0528];
den=[1 -1.8107 2.4947 -1.8801 0.9537 -0.2336];
[z,p,k]=tf2zp(num,den); %zpk�ֱ�Ϊ�㼫������ϵ��
disp('���');disp(z);
disp('����');disp(p);
disp('����ϵ��');disp(k);
figure(1)
zplane(num,den)%ֱ�Ӹ���ϵͳ����ϵ�������㼫��
%�ȼ���仰 zplane(z,p)
legend('���','����')
figure(2)
freqz(num,den,128)
