#Krystian Baran lab 2 zad 1
clc,clear;
n = 3;
N = 3;
C = -2*eye(N) + diag(ones(1,N-1),-1) + diag(ones(1,N-1),1);

for n = 0:5
  B = eye(2^n);
  B = kron(B,C)
endfor
