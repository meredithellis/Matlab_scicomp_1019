%% Finite difference method
x_0 = 0;  %startpoint
x_n = 1; % end points
k= 100; % number of spaces
n=k+1;  % number of points
h=(x_n-x_0)/k; % width of points

u_0 = 0; % dirichlet BC
u_n=0.1; % dirichlet BC

x=(x_0:h:x_n)'; % vector x 

e=ones(n,1);
D2 = spdiags([e -2*e e], -1:1, n, n);
D2=(1/h^2)*D2;
%input BCs
D2(1,:)=0; 
D2(1,1)=1;
D2(end, end-1)=0;
D2(end,end) = 1;


f= @(x) 10*sin(20*x) - cos(x.^5);

g= @(x) [u_0; f(x(2:end-1)); u_n];

u=D2\g(x);
plot(x,u)
xlabel('x') 
ylabel('u(x)')
shg
