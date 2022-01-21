#Krystian Baran zadanie 2
clc,clear, format long;

a = 1;
b = 1;

for i = 1:10
  a = a + 1/i;
  b = b + 1/(11-i);
endfor

disp([a,b,a==b])
disp(a-b)