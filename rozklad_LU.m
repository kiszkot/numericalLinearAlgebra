#Krystian Baran lab 4
clc,clear;
#U = [[1,4,7];[0,-3,-6];[0,0,1]];
#L = [[1,0,0];[2,1,0];[3,2,1]];

A = [[1,4,7];[2,5,8];[3,6,10]];
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

disp("U");
disp(U);
disp("L");
disp(L);



#{
U
   1   4   7
   0  -3  -6
   0   0   1
L
   1   0   0
   2   1   0
   3   2   1
#}