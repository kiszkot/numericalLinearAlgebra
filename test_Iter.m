# Krystian Baran 145000
clc, clear;
warning('off','all');

A = [[4,-1,-0.2,2];[-1,5,0,-2];[0.2,1,10,-1];[0,-2,-1,4]]
B = [30,0,-10,5];
N = length(A);
X = zeros(N,1);
X0 = X;

[X, N, err] = JacobiMethod(A,B, X, 3000, 0.001)
[X, N, err] = GaussSeidelMethod(A,B,X0,3000)
[X, N, err] = SORMethod(A,B,X0)
[X, N, err] = fastFallMethod(A,transpose(B))
[X, N, err] = ConjugateGradientMethod(A,transpose(B),X0,3000)

A = [[4,1];[1,3]];
B = [1;2];
X0 = zeros(2,1);
[X, N, err] = ConjugateGradientMethod(A,B,X0,5)