#Krystian Baran Lab 3 zad 3
clc,clear;

A = [[1,0,0];[1/2,1,0];[1/3,1,1]];
b = [1,3/2,2/3];

x = forwardRow(A,b);
disp(x)

#{
1.00000   1.00000  -0.66667
#}