clc, clear;
xa = 0; xb = 10-1/50;
s=9;
n = 2^s;
h = (xb-xa)/(n-1);
t = xa:h:xb;

x = sin(s*pi*15*t) + sin(s*pi*20*t);
x = x + 2.5*gallery("normaldata", size(t),4);

subplot(2,1,1), plot(t,x)
title("signal corrupt noise")
xlabel("t [ms]")
ylabel("x(t)")

y = FFT(x);
f = (0:length(y)-1)*50/length(y);

subplot(2,1,2), plot(f, abs(y))
title("aplitude corrupted")
xlabel("f [Hz]")
ylabel("|P1(f)|")

# test 2
clc, clear;
Fs = 1000;
xa = 0; xb = 50;
s=9;
n = 2^s;
h = (xb-xa)/(n-1);
t = xa:h:xb;

S = 0.7*sin(2*pi*50*t) + sin(2*pi*129*t);
X = S + 2*randn(size(t));

x = sin(s*pi*15*t) + sin(s*pi*20*t);
x = x + 2.5*gallery("normaldata", size(t),4);

subplot(2,1,1), plot(t,X)
title("signal corrupt noise zero mean")
xlabel("t [ms]")
ylabel("x(t)")

y = FFT(X);
P2 = abs(Y);
f = Fs*(0:length(Y)-1)*50/length(Y);

subplot(2,1,2), plot(f,P2)
title("aplitude corrupted")
xlabel("f [Hz]")
ylabel("|P1(f)|")