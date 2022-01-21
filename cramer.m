#Krystian Baran lab 2 zad 3
function x = cramer (W, B)
  x = [];
  w = det(W);
  n = 0;

  if w~=0
    n = length(W);
    
    for i=1:n
      X = W;
      X(:,i) = B;
      t = det(X);
      x(i) = t/w;
    endfor

  endif

endfunction
