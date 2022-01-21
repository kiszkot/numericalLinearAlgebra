#Krystian Baran

function x = backwardsRow (A, b)
  
  t = 0;
  n = length(A);
  x(n) = b(n)/A(n,n);
  
  for i=n-1:-1:1
    t=0;
    for j=n:-1:i+1
      t = t + x(j)*A(i,j);
    endfor
    x(i) = (b(i) - t)/A(i,i);
    
  endfor

endfunction
