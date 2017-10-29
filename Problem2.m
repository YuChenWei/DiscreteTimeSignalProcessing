clc;
clear;
T_Start=-10;
T_Finish=100;
t=T_Start:1:T_Finish;
X=zeros(1,length(t));
Index=1:1:length(t);
X(11)=1;
Y=zeros(1,length(t));
Y2=zeros(1,length(t));
for i=1:1:length(t)
    Y(i)=ProjectFilter(X,Y,i);
    Y2(i)=ProjectFilter2(X,Y2,i,0);
end

A=[1,-1.8*cos(pi/16),0.81];
B=[1,0.5];
YF=filter(B,A,X);
figure(1);
subplot(3,1,1);
stem(t,Y)
xlabel('Time Sequence');
ylabel('Magnitude');
title('Output by the recursive formula');
legend('Sampling Data');
xlim([T_Start T_Finish]);
subplot(3,1,2);
stem(t,YF)
xlim([T_Start T_Finish]);
xlabel('Time Sequence');
ylabel('Magnitude');
title('Output by the MaTLAB naive function "filter"');
legend('Sampling Data');
subplot(3,1,3);
stem(t,Y2)
xlim([T_Start T_Finish]);
xlabel('Time Sequence');
ylabel('Magnitude');
title('Output by the MaTLAB naive function "filter"');
legend('Sampling Data');