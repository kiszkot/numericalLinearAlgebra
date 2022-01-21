# Krystian Baran

function [X, N, err] = SORMethod(A, b, X0, n, tol, omega)
  
  N = length(A);
  sum = 0;
  err = 0;
  met = [];
  met1 = 0;
  
  if !exist("n") n = 1000; endif
  if !exist("X0") X = zeros(1,N); c = zeros(N,1); X0 = X; 
  else X = X0; c = X0; endif
  if !exist("tol") tol = 0.000001; endif
  if !exist("omega") omega = 2\(1 + sin(pi/(n+1))); endif
  
  for i=1:N
    if A(i,i) == 0 return; endif
  endfor  

  # method
  for j=1:n  
    
    met = norm(b - transpose(A*c), 2);
    met1 = norm(b - transpose(A*c), "inf");
    
    if met < tol || met1 < tol break; endif
    
    for i=1:N
      sum = 0;
      
      for k=1:N
        if k==i continue endif
        sum = sum + A(i,k)*X(k);
      endfor
      
      X(i) = 1/A(i,i)*(b(i) - sum);
      c(i) = (1-omega)*c(i) + omega*X(i);
    endfor
    
    X = c;
    
  endfor

  N = j;
  err = [met; met1];
  X = c;
  
endfunction
