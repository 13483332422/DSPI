    num=[1 -0.1 -0.3 -0.3 -0.2];%���
	den=[1 0.1 0.2 0.2 0.5];%����zpk�ֱ����㼫������ϵ��
	[z,p,k]=tf2zp(num,den);%���ϵͳ�㼫��
	m=abs(p);
	disp('���');disp(z);
	disp('����');disp(p);
	disp('����ϵ��');disp(k);
	sos=zp2sos(z,p,k);%%zp2sos��z��p��K����ɽ��߽�ϵͳ�ֽ�Ϊ2��ϵͳ�Ĵ�����
	disp('���׽�');disp(real(sos));
	zplane(num,den)%ֱ�Ӹ���ϵͳ����ϵ����������ʽ��ʽ��ϵͳת�ƺ������㡢����ֲ�ͼ
    %�ȼ��� �±���仰
    figure
    zplane(z,p)
