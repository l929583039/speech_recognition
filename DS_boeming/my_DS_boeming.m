
% �����DS�̶������γɣ���ʱ-��ͣ�
%����ģʽ�Ƿ�����Ӧ�ľ���ֵ��
clear
N=4;
d=0.04;
thta=pi/2;
f=3000;
c=340;
fai=0:0.01:pi;
a=sin(N*pi*f*d*(cos(fai)-cos(thta))/c);
b=N*sin(pi*f*d*(cos(fai)-cos(thta))/c);
result=abs(a./b);
result=result*max(result);
plot(180*fai/pi,20*log10(result));
title('�����������еĲ���ģʽ');
ylabel('����/dB'); xlabel('��λ��/��');
grid on ;