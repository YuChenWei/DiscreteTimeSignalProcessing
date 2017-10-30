clc;
clear;
%Creating the time sequences
t=0:1:20;
%Creating the input signal x[n]=(0.9)^(n) with the Matlab linear algrbra
x=ones(1,length(t)).*(0.9.^(t(1,:)));
stem(t,x,'bx');
title('Problem 1 : Discrete Time Exponential Signal');
ylabel('Magnitude');
xlabel('Time Sequence');
legend('Sampling Magnitude');