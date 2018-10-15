n=10;
% If any of the quotients is not an integer, the division was not exact,
% check this and keep looping until you find the first n which satisfies
% this condition is reached:
while ( any(ceil (q) ~= floor(q)) )
    % Incrment n:
    n = n + 1;
    % and check the quotients again:
    q = n./(1:10);
end
n