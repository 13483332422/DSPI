function main_1()
h = Unit_pulse_1();%ϵͳ��λ������Ӧ����
x1 = xt();%��������
y1conv=conv(h,x1);%���о��
stem(y1conv,'filled')%�����������еĲ���
end