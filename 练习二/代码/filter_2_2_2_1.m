% y[n]=0.25��x[n-1]+x[n-2]+x[n-3]+x[n-4]��
%��λ��Ծ��Ӧ filter���� 
% �������һ����λ ֱ�Ӱ�x���з��浽���
%�൱�� �Ƚ��м����ϵͳ�ĵ�λ������Ӧ,Ȼ���������������
%��λ������Ӧ�ľ��
a2=1;
b2=[0 0.25*ones(1,4)];
n=0:20;
x2=ones(1,21);
y2filter=filter(b2,a2,x2);
stem(n,y2filter);
title('y2filter_step');
xlabel('x');
ylabel('y')
set(gca,'YLim',[0 1.5]);%Y���������ʾ��Χ