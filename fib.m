function f= fib(n)

% fib returns the nth Fibonacci number

% treat n=0,1,2 as special cases

if (n==0) 
    f=0;
    return;
end
if (n<=2)
    f=1;
    return;
end

% Initialise an array;
y=[1 1 0];
for k=3:n
    y(3)=y(1)+y(2);
    %shift Fibonacci numbers to left
    y(1)=y(2);
    y(2)=y(3);
end
%output nth Fibonacci number
f=y(3);
end
