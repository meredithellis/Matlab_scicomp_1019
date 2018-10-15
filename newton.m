function [output1] = newton(x0)

f = @(x) sin(x) + cos(x);
fp= @(x) cos(x) - sin(x);

x=x0;

tol=1e-10;

counter = 0; dx = inf; fx = [];     % Initialise variables

while ( abs(f(x)) > tol && abs(dx) > tol && counter < 10 )
    dx = f(x)/fp(x); % step difference
    x = x - dx; % update step
    counter = counter + 1;
    fx(counter) = f(x);             % Store convergence
end
output1=x;
%disp(x)                             % Display answer

% semilogy(1:counter, abs(fx),'.-');  % Plot function values vs. iterations
% shg

return;
end