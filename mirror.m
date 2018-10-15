
x=12; %input

a=floor(x/10);
b=x-10*a;

mir=b*10+a;

%%
% Compute the primes between 10 and 100:
n = 100;
p = primes (n).'; 

% Primes less than 10 can't be mirrored! So delete them.
p(p<10) = [];

% Compute mirrors of each prime
q=0*p;
for k=1:length(p)
    a=floor(p(k)/10);
    b=p(k)-10*a;
    q(k)=10*b + a;
end

%Display 
[p q]

idx=isprime(q);

mirrorPrimes= [p(idx), q(idx)]

numel(mirrorPrimes(:,1)) 
