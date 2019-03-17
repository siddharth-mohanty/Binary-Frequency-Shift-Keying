clc
clear all;
close all;
%carrier frequency and amplitude
f1=8;
f2=2;
a=2;
%6 bits used
%the bit sequence is 1,0,1,1,0,0==>6bits n=[0 0 1 1 0 0];
l=length(n);
if n(l)==1
n(l+1)=1
else
n(l+1)=0
end
l1=length(n); tn=0:l1-1;
%plot message signal subplot(5,1,1); stairs(tn,n); title('message signal'); xlabel('time'); ylabel('amplitude'); %plot carrier t=0:0.01:6; y1=a*sin(2*pi*f1*t); y2=a*sin(2*pi*f2*t); subplot(5,1,2); plot(t,y1); title('carrier signal 1'); xlabel('time'); ylabel('amplitude'); subplot(5,1,3); plot(t,y2); title('carrier signal 2'); xlabel('time'); ylabel('amplitude'); for i=1:6
 for j=(i-1)*100:i*100
8
if(n(i)==1) s(j+1)=y1(j+1);
else
s(j+1)=y2(j+1);
end end
end
%plot fsk signal
subplot(5,1,4)
plot(t,s);
title('frequency shift keying'); xlabel('time'); ylabel('amplitude'); %demodulation process
for i=1:6
for j=(i-1)*100:i*100 if(s(j+1)==y1(j+1))
x(j+1)=1;
else
x(j+1)=0;
end end
end
%plot demodulation
subplot(5,1,5);
plot(t,x);
title('fsk demodulation'); xlabel('time'); ylabel('amplitude');