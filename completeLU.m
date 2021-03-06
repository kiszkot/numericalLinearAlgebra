#Krystian Baran

function [L, U, P, Q] = completeLU (A)
  
  U = A;
  n = length(A);
  L = eye(n);
  P = eye(n);
  Q = eye(n);
  swap = 1;
  
  for i=1:n-1
    
    #wyb?r pivota
    pivot = U(i,i);
    swap = [i,i];
    for k=i:n
      for l=i:n
        if abs(U(k,l)) > abs(pivot)
          pivot = U(k,l);
          swap = [k,l];
        endif
      endfor
    endfor
    
    #permutacja
    U = SwapRow(U,swap(1),i);
    U = SwapCol(U,swap(2),i);
    P = SwapRow(P,i,swap(1));
    Q = SwapCol(Q,swap(2),i);
    
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

function C = SwapRow (B, n, m)
  
  tmp = B(n,:);
  B(n,:) = B(m,:);
  B(m,:) = tmp;
  C = B;
  
endfunction

function C = SwapCol (B, n, m)
  
  tmp = B(:,n);
  B(:,n) = B(:,m);
  B(:,m) = tmp;
  C = B;
  
endfunction
