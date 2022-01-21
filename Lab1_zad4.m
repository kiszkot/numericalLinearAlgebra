#Krystian Baran zadanie 4
clc,clear, format long;

x = [10^20,1223,10^18,10^15,3,-10^12];
y = [10^20,2,-10^22,10^13,2111,10^16];

a = 0;

for i=1:length(x)
  a = x(i)*y(i) + a;
endfor

disp(a)
dot(x,y)