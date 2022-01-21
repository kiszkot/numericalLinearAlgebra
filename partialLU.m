#Krystian Baran

function [L, U, P] = partialLU (A)
  
  U = A;
  n = length(A);
  L = eye(n);
  P = eye(n);
  swap = 1;
  
  for i=1:n-1
    
    #wybór pivota
    pivot = U(i,i);
    swap = i;
    for k=i:n
      if abs(U(k,i)) > abs(pivot)
        pivot = U(k,i);
        swap = k;
      endif
    endfor
    
    #permutacja
    U = Swap(U,swap,i);
    P = Swap(P,i,swap);
    
    #wyzerowanie elementow
    for k=i+1:n
      a = U(k,i);
      b = -a/pivot;
      for j=i:n
        U(k,j) = U(k,j) + b*U(i,j);
      endfor
      U(k,i) = -b;
    endfor
    
  endfor
  
#split
  n=length(A);

  for i=2:n
    for j=1:i-1
      L(i,j) = U(i,j);
      U(i,j) = 0;
    endfor
  endfor
  
endfunction

function C = Swap (B, n, m)
  
  tmp = B(n,:);
  B(n,:) = B(m,:);
  B(m,:) = tmp;
  C = B;
  
endfunction
