 %sa(x)
t=-pi:0.001:pi; x=sinc(t);
 plot(t,x);
xlabel('t'),ylabel('sinc(t)');
t=-pi:0.001:pi; x = sin(pi*t)./(pi*t);%�ֶ�ʵ��sinc����
 plot(t,x);
xlabel('t'),ylabel('sinc(t)');