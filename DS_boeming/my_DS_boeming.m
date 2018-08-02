
% 线阵的DS固定波束形成（延时-求和）
%波束模式是方向响应的绝对值。
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
title('均匀线性阵列的波束模式');
ylabel('增益/dB'); xlabel('方位角/度');
grid on ;