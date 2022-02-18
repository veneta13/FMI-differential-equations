clear

h=0.1; % step for x
tau=0.004; % step for t

t = 0:tau:0.5; % time
x = 0:h:2;

M = length(t);
N = length(x);

u = zeros(N,M);

for n=1:N % calculate initial condition
    u(n,1) = x(n) * sin( pi * x(n) );
end

for m=1:M % calculate boundary conditions
    u(1,m) = 3 * t(m) * t(m) - t(m);
    u(N,m) = exp((-1) * t(m)) - cos (5 * t(m));
end

for m=1:M-1 % t
    for n = 2:N-1 % x
        u(n,m+1) = (1-2*tau/h^2)*u(n,m)+tau/h^2*(u(n-1,m)+u(n+1,m));
    end
end

axis([0,2,-4,4])

for m = 1:M
    plot(x,u(:,m))
    axis([0,2,-4,4])
    MM(m) = getframe;
end

movie(MM,2,10)