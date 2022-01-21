#Krystian Baran zadanie 5
clc,clear, format long;

function f = f(x)
  f = sqrt(x^2+1)-1;
endfunction

function g = g(x)
  g = x^2/(sqrt(x^2+1)+1);
endfunction

G = [];
F = [];

for i=1:12
  G = [G g(8^-i)];
  F = [F f(8^-i)];
  disp([g(8^-i), f(8^-i)])
endfor

disp(G==F)
