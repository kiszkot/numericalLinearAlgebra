# Krystian Baran

function [X, N, err] = JacobiMethod(A, b, X0, n, tol)
  
  N = length(A);
  sum = 0;
  err = 0;
  met = [];
  met1 = 0;
  
  if !exist("n") n = 1000; endif
  if !exist("X0") X = zeros(1,N); X0 = X; else X = X0; endif
  if !exist("tol") tol = 0.0001; endif
  
  for i=1:N
    if A(i,i) == 0 return; endif
  endfor  

  # method
  for j=1:n  
    
    X0 = X;
    met = norm(b - transpose(A*X0), 2);
    met1 = norm(b - transpose(A*X0), "inf");
    
    if met < tol | met1 < tol break; endif
    
    for i=1:N
      sum = 0;
      
      for k=1:N
        if k==i continue endif
        sum = sum + A(i,k)*X0(k);
      endfor
      
      X(i) = 1/A(i,i)*(b(i) - sum);
    endfor
    
  endfor

  N = j;
  err = [met; met1];
  
endfunction
