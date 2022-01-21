#Krystian Baran lab 2 zad 3
clc,clear,format long;
W = []; #-2*eye(3) + diag(ones(1,3-1),-1) + diag(ones(1,3-1),1);
B = []; #12*(pi/2)^2*[pi/2,pi,3*pi/2];
ns = [10,50,100,200,500,1000];

times = [];

for i=1:length(ns)
  W = -2*eye(ns(i)) + diag(ones(1,ns(i)-1),-1) + diag(ones(1,ns(i)-1),1);
  B = 12*(pi/2)^2*[0:2*pi/(ns(i)+1):2*pi];
  B(:,1) = [];
  B(:,end) = [];
  tic;
  cramer(W,B);
  times(i) = toc;
endfor

plot(ns,times);

for i=2:length(times)
  disp(times(i)/times(i-1));
endfor

disp(times);