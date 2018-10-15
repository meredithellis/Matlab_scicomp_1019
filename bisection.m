function r = bisection(f, a, b)
% Find a root of the function f between a and b using bisection. 
% f is assumed to be a function handle for a continuous function.

% Define a tolerance:
tol = 1e-10;

% Initialize iteration counter:
nIter = 1;

while (abs(b-a) > tol && nIter < 100)
    r = (a+b)/2;
    
    %if root is in [a,r]
    if (f(a)*f(r) <= 0)
        % make r as new b
        b=r;
        % bisect again
        r = (a+b)/2;
    end
    
        %if root is in [r,b]
    if (f(b)*f(r) <= 0)
        % make r as new a
        a=r;
        % bisect again
        r = (a+b)/2;
    end
    nIter = nIter +1;
end
if ( nIter >= 100 )
    r = NaN;
end