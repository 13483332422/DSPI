%��ָ������
clf;
n=1:30;
x=2*exp(j*3*n);
plt1 = subplot(3,1,1)
stem(plt1,n,x); xlabel ('ʱ������n');ylabel('���');title('��ָ������x=2*exp(j*3*n) (Ĭ�Ϻ���)');
set(gca,'YLim',[-2.5 2.5]);%Y���������ʾ��Χ
plt2 = subplot(3,1,2)
stem(plt2,n,real(x)); xlabel ('ʱ������n');ylabel('ʵ��');title('��ָ������x=2*exp(j*3*n)��ʵ�� (real()����)');
set(gca,'YLim',[-2.5 2.5]);%Y���������ʾ��Χ
plt3 = subplot(3,1,3)
stem(plt3,n,imag(x)); xlabel ('ʱ������n');ylabel('�鲿');title('��ָ������x=2*exp(j*3*n)���鲿 (imag()����)');
set(gca,'YLim',[-2.5 2.5]);%Y���������ʾ��Χ