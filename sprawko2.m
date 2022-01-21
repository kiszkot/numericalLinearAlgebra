# Krystian Baran 145000
clc, clear, format long;
warning('off','all');

A = gallery("moler", 100);
disp("cond")
cond(A)
N = length(A);
X0 = zeros(N,1);
B = A*ones(N,1);
tol1 = 10^(-3);
tol2 = 10^(-6);

#{
disp("Jacobi")
[X, N, err] = JacobiMethod(A,transpose(B), X0, 1000, tol1);
disp(N)
disp(err)
[X, N, err] = JacobiMethod(A,transpose(B), X0, 1000, tol2);
disp(N)
disp(err)


disp("Gauss Seidel")
[X, N, err] = GaussSeidelMethod(A,transpose(B),X0, 1000, tol1);
disp(N)
disp(err)

[X, N, err] = GaussSeidelMethod(A,transpose(B),X0, 1000, tol2);
disp(N)
disp(err)


disp("SOR")
[X, N, err] = SORMethod(A,transpose(B),X0, 1000, tol1);
disp(N)
disp(err)

[X, N, err] = SORMethod(A,transpose(B),X0, 1000, tol2);
disp(N)
disp(err)


disp("Fast Fall")
[X, N, err] = fastFallMethod(A,B, X0, 1000, tol1);
disp(N)
disp(err)

[X, N, err] = fastFallMethod(A,B, X0, 1000, tol2);
disp(N)
disp(err)
#}

disp("Conj Gradient")
[X, N, err] = ConjugateGradientMethod(A,B,X0, 1000, tol1);
disp(N)
disp(err)
[X, N, err] = ConjugateGradientMethod(A,B,X0, 1000, tol2);
disp(N)
disp(err)
