function C = FFT(f)
N = length(f);
if N == 1
    C = f;
else
    u = FFT(f(1:2:N-1));
    v = FFT(f(2:2:N));
    
    N2 = N/2;
    for k = 1:N2
        lambda = exp(-(2*pi*1i*(k-1))/(N));
        term = v(k) * lambda;
        C(k) = u(k) + term;
        C(k+N2) = u(k) - term;
    end

end