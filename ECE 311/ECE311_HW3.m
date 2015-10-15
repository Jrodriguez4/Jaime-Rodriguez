%P#12
s=tf('s');
sys=36/(s^2+2*s+36)

step(sys)
grid
ylabel('C(t)');
ylim([0 2]);
xlim([0 6]);
legend('sys')



%%

clc
clear
s=tf('s');

% P#13
sys1=5/(5*s^2+s+5)
sys2=(1+.8*s)/(s^2+s+1)
sys3=1/(s^2+s+1)


figure
hold on
step(sys1)
step(sys2)
step(sys3)
grid
ylabel('C(t)');
ylim([0 2]);
xlim([0 60]);
legend('sys1','sys2','sys3')

figure
hold on
impulse(sys1)
impulse(sys2)
impulse(sys3)
grid
ylabel('C(t)');
ylim([-1 1]);
xlim([0 60]);
legend('sys1','sys2','sys3')


sys1=sys1*(1/s)
sys2=sys2*(1/s)
sys3=sys3*(1/s)


figure
hold on
step(sys1)
step(sys2)
step(sys3)
grid
title('Ramp Response')
ylabel('C(t)');
ylim([0 10]);
xlim([0 10]);
legend('sys1','sys2','sys3')
%%
%P#14
clc
clear
s=tf('s');
R=(1/s);
x1=40/(.1*s^3+s^2+10*s+40)

x2=x1*s

x3=x2*(.01*s+.1)
e=(x3*s+x2)/4

figure(1)
hold on
step(x1)
step(x1*R)

grid
title('X1 vs t')
ylabel('x1(t)');
ylim([0 2]);
xlim([0 2]);
legend('step','ramp')


figure(2)
hold on
step(x2)
step(x2*R)

grid
title('X2 vs t')
ylabel('x2(t)');
ylim([-1 4]);
xlim([0 2.5]);
legend('step','ramp')

figure(3)
hold on
step(x3)
step(x3*R)

grid
title('X3 vs t')
ylabel('x3(t)');
ylim([-.5 .2]);
xlim([0 2.5]);
legend('step','ramp')

figure(4)
hold on
step(e)
step(e*R)

grid
title('e vs t')
ylabel('e(t)');
ylim([-.2 1.2]);
xlim([0 2]);
legend('step','ramp')

%%
%P#15
clc
clear
s=tf('s');
R=(1/s);

T=10/(s*(s+2)*(s+4)+10)

figure(1)

step(T)
grid
ylabel('C(t)');
ylim([0 2]);
xlim([0 8]);
legend('step')

%%
%P#1
clc
clear
s=tf('s');
R=(1/s);
K=8.59;

T=K/(.083*s^2+s+K)


figure(1)

step(T)
grid
ylabel('Heart Rate');
ylim([0 1.3]);
xlim([0 1.5]);
legend('step')

%%
clc
clear
X=0:.01:1;
Y=exp(((-pi)*X)./sqrt(1-(X.^2)));

plot(X,Y,'g');

%%
%P#1
clc
clear
s=tf('s');

K=51.1  % K=km*ku
T=K/(.4*s+1+K)


figure(1)

step(T*25)
grid
ylabel('Heart Rate');
ylim([0 30]);
xlim([0 10]);
legend('step')






