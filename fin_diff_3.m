%% Finite difference method
x_0 = -1;  %startpoint
x_n = 1; % end points
k= 100; % number of spaces
n=k+1;  % number of points
h=(x_n-x_0)/k; % width of points

u_0 = 0; % dirichlet BC
u_n = 0; % dirichlet BC

x=(x_0:h:x_n)'; % vector x 

%% Create D2 to approx u''
e=ones(n,1);
D2 = spdiags([e -2*e e], -1:1, n, n);
D2=(1/h^2)*D2;

%% Create D1 to approx u'
e=ones(n,1);
D1=spdiags([-e zeros(n,1) e], -1:1, n, n);
D1=(2*h)^(-1)*D1;

%% Update matrix
D= D2 + D1 +100*eye(n);
%input Dirichlet BCs
D(1,:)=0; 
D(1,1)=1;
D(end, end-1)=0;
D(end,end) = 1;

f= @(x) x; %sample function

g= @(x) [u_0; f(x(2:end-1)); u_n]; %apply diriclet BC

%solve for u
u=D\g(x);

plot(x,u)
xlabel('x') 
ylabel('u(x)')
shg
