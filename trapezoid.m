function I = trapezoid(f, a, b, N)

Dx = (b-a)/N;

x=a:Dx:b;

I= (Dx)*(sum(f(x)))- (Dx/2)*(f(1)+f(end));