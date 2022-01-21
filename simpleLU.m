#Krystian Baran prosty rozk³¹d LU
#Macierz L przechowana w macierzy U

function [L, U] = simpleLU (A)
  
  U = A;
  n = length(A);
  L = eye(n);
  
  for i=1:n-1
    pivot = U(i,i);
    for k=i+1:n
      a = U(k,i);
      b = -a/pivot;
      for j=i:n
        U(k,j) = U(k,j) + b*U(i,j);
      endfor
      L(k,i) = -b;
    endfor
  endfor
  
endfunction

#{
split

n=length(A);
B1 = eye(n);

for i=2:n
  for j=1:i-1
    B1(i,j) = B(i,j);
    B(i,j) = 0;
  endfor
endfor
#}