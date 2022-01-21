clc,clear;
#test dowolna macierz
disp("dowolna macierz");
A = magic(3)

[U, L] = simpleLU(A);

disp(U);
disp(" ");
disp(L);
A = L*U

#test zadanie
disp("zadanie");
A = [[1,4,7];[2,5,8];[3,6,10]]
[U, L] = simpleLU(A);

disp(U);
disp(" ");
disp(L);
A = L*U

#partialLU
disp("partial LU");
P = [];
A = [[2,1,1,1];[4,3,5,6];[6,5,11,6];[4,3,9,8]]
[L,U,P] = partialLU(A);
P*A
disp("U")
disp(U);
disp("L");
disp(L);
disp("P");
disp(P);
A = L*U
det(L)
det(P)
det(U)

#completeLU
disp("complete LU");
Q = [];
A = [[2,3,4];[4,7,5];[4,9,5]];
[L,U,P,Q] = completeLU(A);
disp("U")
disp(U);
disp("L");
disp(L);
disp("P");
disp(P);
disp("Q");
disp(Q);
P*A*Q
L*U

#{
P
   0   1   0   0
   0   0   0   1
   1   0   0   0
   0   0   1   0
#}