clc;
clear;
t=0:1:20;
x=ones(1,length(t)).*(0.9.^(t(1,:)));
stem(t,x,'bx');
title('Problem 1 : Discrete Time Exponential Signal');
ylabel('Magnitude');
xlabel('Time Sequence');
legend('Sampling Magnitude');