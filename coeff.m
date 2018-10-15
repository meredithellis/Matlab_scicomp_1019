n=15;
a= zeros(n,1);
a(1) = 1;

for k=1:n
    a(k+1) = -a(k)/((2*k)*(2*k-1));
end

sprintf("a(n) = %g",a(n))

sprintf("sum coeff = %f", sum(a) )