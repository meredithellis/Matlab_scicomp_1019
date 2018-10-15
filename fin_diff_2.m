%% Finite difference method
x_0 = -20;  %startpoint
x_n = 20; % end points
k= 1000; % number of spaces
n=k+1;  % number of points
h=(x_n-x_0)/k; % width of points

u_0 = 1; % dirichlet BC
u_n=0; % dirichlet BC

x=(x_0:h:x_n)'; % vector x 

%% Create D2 to approx u''
e=ones(n,1);
D2 = spdiags([e -2*e e], -1:1, n, n);
D2=(1/h^2)*D2;


%% Update matrix
D= D2 - x.*eye(n);
%input BCs
D(1,:)=0; 
D(1,1)=1;
D(end, end-1)=0;
D(end,end) = 1;

f= @(x) 0*x; %sample function

g= @(x) [u_0; f(x(2:end-1)); u_n]; %apply diriclet BC

%solve for u
u=D\g(x);

plot(x,u)
xlabel('x') 
ylabel('u(x)')
shg
