% ��λ�������к���ʱ�ĵ�λ��������
clf;
n=0:10;
x1=[1 zeros(1,10)];x2=[zeros(1,5) 1 zeros(1,5)];
subplot(1,2,1);
stem(n,x1);xlabel ('ʱ������n');ylabel('���');title('��λ��������x1');
subplot(1,2,2);
stem(n,x2); xlabel('ʱ������n');ylabel('���');title('��ʱ��5�ĵ�λ��������');
set(gca,'YLim',[0 1.5]);%Y���������ʾ��Χ