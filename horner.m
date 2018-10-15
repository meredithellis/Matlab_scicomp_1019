clear
%%Inputs
n=600; % compute the first n+1 coeff a_0, a_1, ..., a_n
x0= 0.5;
%%
a= zeros(n+1,1);
a(1) = 1;

for k=1:n
    a(k+1) = -a(k)/((2*k)*(2*k-1));
end

%sprintf("a(n) = %g",a(n+1))

%sprintf("sum coeff = %f", sum(a) )

N = length(a);

% Loop:
s = 0;
for k = N:-1:1 
    s = x0.*s + a(k);
end


sprintf("p(x0) = %d",s)