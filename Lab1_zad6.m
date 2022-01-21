#Krystian Baran zadanie 6
clc,clear, format long;

function f = f(n)
  f = (1-sqrt(3))^(n-1);
endfunction

X = [1, 1-sqrt(3)];
Y = [f(1),f(2)];
disp([X(1),Y(1)])
disp([X(2),Y(2)])

for i=3:100
  X(i) = 2*(X(i-1)+X(i-2));
  Y = [Y f(i)];
  
  disp([X(i) f(i)])
endfor

disp(X==Y)