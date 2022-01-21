#Krystian Baran lab 2 zad 2
clc,clear,format longe;
W = -2*eye(3) + diag(ones(1,3-1),-1) + diag(ones(1,3-1),1);
B = 12*(pi/2)^2*[pi/2,pi,3*pi/2];
x = [];
w = det(W);

x = cramer(W,B);

#{
if w~=0
  
  for i=1:length(W)
    X = W;
    X(:,i) = B;
    t = det(X);
    x(i) = t/w;
  endfor

endif
#}

disp(x)