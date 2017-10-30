clc;
clear;
%Starting time
T_Start=-10;
%Finish time
T_Finish=100;
%Creating the time sequence
t=T_Start:1:T_Finish;
%Initializing the input signal
X=zeros(1,length(t));
%Due to the input signal is the unit delta function, the 11th element is 1.
%x(1|t=-10),x(2|t=-9),...x(11|t=0)....
X(11)=1;
%Initializing the 1st output signal by the method 1
Y=zeros(1,length(t));
%Initializing the 2nd output signal by the method 2
Y2=zeros(1,length(t));
%Using the signal x input to the system and generating the output signal 
for i=1:1:length(t)
    Y(i)=ProjectFilter(X,Y,i);
    Y2(i)=ProjectFilter2(X,Y2,i,0);
end
%Generating the output signal by the Matlab naive function "filter"
A=[1,-1.8*cos(pi/16),0.81];
B=[1,0.5];
YF=filter(B,A,X);
%Plotting Output
figure(1);
subplot(3,1,1);
stem(t,Y,'bx')
xlabel('Time Sequence');
ylabel('Magnitude');
title('Output by the recursive formula with method 1');
legend('Sampling Data');
xlim([T_Start T_Finish]);
subplot(3,1,2);
stem(t,YF,'ro')
xlim([T_Start T_Finish]);
xlabel('Time Sequence');
ylabel('Magnitude');
title('Output by the Matlab naive function "filter"');
legend('Sampling Data');
subplot(3,1,3);
stem(t,Y2,'ms')
xlim([T_Start T_Finish]);
xlabel('Time Sequence');
ylabel('Magnitude');
title('Output by the recursive formula with method 2');
legend('Sampling Data');