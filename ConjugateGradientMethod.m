# Krystian Baran

function [x, n, err] = ConjugateGradientMethod(A, b, X0, n, tol) 
  
  #{
  is Simetric ?
  if A != transpose(A)
    disp("Martix A is not Simetric");
    return
  endif
  #}
  
  if !exist("tol") tol = 0.01; endif
  if !exist("n") n = 10000; endif
  if !exist("X0") X0 = zeros(length(b), 1); endif
  
  X = X0;
  t = 0;
  met = 0;
  met1 = 0;
  r = b - A*X;
  u = r;
  
  for i=1:n
    
    if u == 0 break; endif
    
    t = transpose(r)*r/(transpose(u)*A*u);
    X = X + t*u;
    R = r - t*A*u;
    
    met = sqrt(transpose(R)*R);
    met1 = norm(r, "inf");
    if met < tol || met1 < tol break; endif
    
    beta = (transpose(R)*R)/(transpose(r)*r);
    u = R + beta*u;
    r = R;
    
  endfor
  
  x = X;
  err = [met; met1];
  n = i;
  
endfunction

# Dot Product
function t = scalar(x,y)
  
  m = length(transpose(x));
  t = 0;
  for i = 1:m
    t = t + x(i)*y(i);
  endfor
  
endfunction
