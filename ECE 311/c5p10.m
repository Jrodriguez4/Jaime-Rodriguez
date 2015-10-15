%unit step response
num = [ 0 0 10];
den = [1 2 10];
t = 0:0.02:10;
subplot(2,2,1)
step(num,den,t)
grid on
title('Unit-Step Response')
xlabel ('t (secs)')
ylabel ('c(t)')

%unit ramp response
numr = [0 0 0 10];
denr = [1 2 10 0];
c = step(numr,denr,t);
subplot(2,2,2)
plot(t,c,'-',t,t,'--')
grid on
title('Unit-Ramp Response')
xlabel('t (secs)');
ylabel('c(t)')

%unit impulse response
subplot(2,2,3)
impulse(num,den,t)
grid on
title('Unit-Impulse Response')
xlabel('t (secs)')
ylabel('c(t)')