

%ʹ��conv()����������������ϵͳ��λ���о��
a1=[1,-0.9];% y[n]ϵ��
b1=[0.05 0.50];%x[n]ϵ��
h1n = ones(1,10);
h2n = [1 2.5 2.5 1];
xn = ones(1,8);
y1n = conv(h1n,xn);
y2n = conv(h2n,xn);
figure
stem(y1n,'filled');
title('h1ϵͳ�������Ӧ')
figure
stem(y2n,'filled');
title('h2ϵͳ�������Ӧ')
