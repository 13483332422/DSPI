%Sawtooth���ǲ�
t=-2*pi:0.001:2*pi;
y=sawtooth(t);
plot(t,y);
xlabel('t'),ylabel(' y=sawtooth(t);');
set(gca,'YLim',[-1.5 1.5]);%Y���������ʾ��Χ