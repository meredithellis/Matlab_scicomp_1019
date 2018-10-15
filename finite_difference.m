%% Finite difference method

%% Initialization
% Definition of the interval
x_0 = 0;
x_n = 1;

% number of points
n = 100;
h = (x_n-x_0)/(n-1);

% Dirichlet BC
u_0 = 0;
u_n = 0.1;

% Vector of points
x = linspace(x_0, x_n, n).';

%% Matrix of the operator d^2/dx^2
% Define the operator
D2 = gallery('tridiag',n,1,-2,1);

% Add BCs
% x = 0
D2(1,1) = 1; D2(1,2) = 0;
% x = 1
D2(n,n-1) = 0; D2(n,n) = 1;

%% Right hand side
f = @(x) 10*sin(20*x)+cos(x.^5);

% Multiply the rhs by h^2 to avoid numerical errors
F = h^2*f(x);

% Add BC
F(1) = u_0;
F(n) = u_n;

%% Compute the solution and plot it
% Solve the equation
u=D2\F;

% Plot the solution
plot(x,u)
xlabel('x') 
ylabel('u(x)')
shg
