

G=10^9;
M=10^6;
K=10^3;
fc=input('Enter cutoff frequeny?');
R=input('Enter termination resistance?');


Co=input('enter Low Pass filter Coefficient?');
while Co ~= 0
clc
Co = 1/Co;
%Series legs

C1=Co/(2*pi*R*fc);


%Parallel legs

L=(R*Co)/(2*pi*fc);


display('Series');

display('Capacitor =');
disp(C1);

display('Parallel');
display('Inductor =');
disp(L);

Co=input('enter another filter Coefficient?');

end

