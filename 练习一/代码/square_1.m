%�ֶ�ʵ���෽��
T = 40;
x = 0.1:0.1:20;
y1 = ones(1,T);
y2 = -ones(1,T);
y = [y1 y2 y1 y2 y1];
plot(x,y)
set(gca,'YLim',[-1.5 1.5]);%Y���������ʾ��Χ
xlabel('t')
title('�ֶ�ʵ�ַ���')
