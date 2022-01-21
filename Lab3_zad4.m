#Krystian Baran Lab 3 zad 4
clc,clear, format longe;

A = [[1,0,0];[1/2,1,0];[1/3,1,1]];
A = transpose(A);
b = [5/6,2,1];

x = backwardsRow(A,b);
disp(x)

#{
1.1102e-16   1.0000e+00   1.0000e+00
#}