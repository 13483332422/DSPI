num=[5];
den=[1 -1 0.09]; 
subplot(2,1,1)
%ǰ40����ĳ弤��Ӧ
impz(num,den,40);
[h,t]=impz(num,den,40); 
title('������Ӧ')
step=ones(1,100);
subplot(2,1,2)
y=conv(h,step);
n=0:138;
stem(n,y,'filled')
title('��Ծ��Ӧ')
