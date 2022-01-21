#Krystian Baran

function x = forwardRow (A, b)
  
  x(1) = b(1)/A(1,1);
  t = 0;
  n = length(A);
  
  for i=2:n
    t=0;
    for j=1:i-1
      t = t + x(j)*A(i,j);
    endfor
    x(i) = (b(i) - t)/A(i,i);
    
  endfor

endfunction
