clc,clear, format long;

A = gallery("lehmer",4)
b = A*[1;1;1;1]
cond(A)

#cramer
x = cramer(A,b)
norm(x -[1,1,1,1],2)

#simple LU
[L, U] = simpleLU(A,b);
y = forwardRow(L,b);
x = backwardsRow(U,y)
norm(x -[1,1,1,1],2)

#partial LU
[L, U, P] = partialLU(A,b);
B = P*b;#transpose(b)
y = forwardRow(L,B);
x = backwardsRow(U,y)
norm(x -[1,1,1,1],2)

#complete LU
[L, U, P, Q] = completeLU(A,b);
B = P*b;
y = forwardRow(L,B);
y = backwardsRow(U,y);
x = Q*transpose(y)
norm(x - [1;1;1;1],2)

#czasy obliczania

n = 1600, p=0;
A = gallery("lehmer",n);
b = A*ones(n,1); 
disp(cond(A));
#{
#cramer
tic;
x = cramer(A,b);
p=toc;
disp("Cramer")
if ~isempty(x)
  disp(norm(x-ones(1,n)));
  disp(p);
endif

#simple LU
tic;
[L, U] = simpleLU(A,b);
y = forwardRow(L,b);
x = backwardsRow(U,y);
p=toc;
disp("Simple LU")
disp(norm(x-ones(1,n)));
disp(p);
#}

#partial LU
tic;
[L, U, P] = partialLU(A,b);
B = P*b;#transpose(b)
y = forwardRow(L,B);
x = backwardsRow(U,y);
p=toc;
disp("Partial LU")
disp(norm(x-ones(1,n)));
disp(p);


#complete LU
tic;
[L, U, P, Q] = completeLU(A,b);
B = P*b;
y = forwardRow(L,B);
y = backwardsRow(U,y);
x = Q*transpose(y);
p=toc;
disp("Complete LU")
disp(norm(x-ones(n,1)));
disp(p);


