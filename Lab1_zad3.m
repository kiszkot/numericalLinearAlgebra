#Krystian Baran zadanie 3
clc,clear, format long;

a = 0;
b = 0;
N = [];

for n = 2:100
  for i = 1:n
    a = a + 1/i;
    b = b + 1/(n+1-i);
  endfor
  N = [N a==b];
endfor

disp(N)
