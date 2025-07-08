clc;
clear all;
fileID=fopen('INNOVATION_1.txt','r');
data= textscan(fileID,'%f %f %f %f %f %f %f %f');
fclose(fileID);
T_1=data{1};
T_2=data{2};
T_3=data{3};
T_4=data{4};
T_5=data{5};
T_6=data{6};
x=linspace(1,3104,3104);

%% Segmented rod
figure(1);
plot(x,T_2);
hold on;
plot(x,T_3);
hold on;
plot(x,T_1);
title('Temperature Variation of Segmented Rod');
xlabel('Time (s)');
ylabel('Temperature (*C)')
legend('T_L','T_m','T_0');
hold off;

%% Continuous Rod
figure(2);
plot(x,T_4);
hold on;
plot(x,T_5);
hold on;
plot(x,T_6);
title('Temperature Variation of Continuous Rod');
xlabel('Time (s)');
ylabel('Temperature (*C)')
legend('T_L','T_m','T_0');
hold off;