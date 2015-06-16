

G=10^9;
M=10^6;
K=10^3;
fo=input('enter Resonance frequeny?');

BW=input('enter Bandwidth?');
R=input('enter Resistance?');


Co=input('enter filter Coefficient?');
while Co ~= 0
clc

%parallel legs

C1=Co/(2*pi*R*BW);

L1=(R*BW)/(2*pi*Co*(fo).^2);

%Series legs

C=BW/(2*pi*Co*R*(fo).^2);

L=(R*Co)/(2*pi*BW);


display('Series');
display('Capacitor =');
disp(C);

display('Inductor =');
disp(L);

display('Parallel');
display('Capacitor =');
disp(C1);

display('Inductor =');
disp(L1);

Co=input('enter another filter Coefficient?');

end

