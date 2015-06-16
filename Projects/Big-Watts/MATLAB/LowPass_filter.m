

G=10^9;
M=10^6;
K=10^3;
fc=input('Enter cutoff frequeny?');
R=input('Enter termination resistance?');


Co=input('enter filter Coefficient?');
while Co ~= 0
clc

%parallel legs

C1=Co/(2*pi*R*fc);


%Series legs

L=(R*Co)/(2*pi*fc);


display('Series');

display('Inductor =');
disp(L);

display('Parallel');
display('Capacitor =');
disp(C1);

Co=input('enter another filter Coefficient?');

end

