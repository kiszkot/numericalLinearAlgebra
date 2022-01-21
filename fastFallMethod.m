# Krystian Baran

function [x, n, err] = fastFallMethod(A, b, X0, n, tol) 
  
  #{
  is SPD ? 
  if A != transpose(A)
    disp("Martix A is not SDP");
    return
  endif
  #}
  
  if !exist("tol") tol = 0.0001; endif
  if !exist("n") n = 10000; endif
  if !exist("X0") X0 = zeros(length(b), 1); endif
  
  X = X0;
  v = [];
  t = 0;
  met = 0;
  met1 = 0;
  
  for i=1:n
    
    met = norm(b - A*X, 2);
    met1 = norm(b - A*X, "inf");
    
    if met < tol || met1 < tol break; endif
    
    x = X;
    v = b - A*x;
    t = grad(v,v)/grad(v,A*v);
    X = x + t*v;
    
  endfor
  
  x = X;
  err = [met; met1];
  n = i;
  
endfunction

function t = grad(x,y)
  
  m = length(transpose(x));
  t = 0;
  for i = 1:m
    t = t + x(i)*y(i);
  endfor
  
endfunction
