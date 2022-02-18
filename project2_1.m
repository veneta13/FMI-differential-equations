clear
N = 42; % number count

t = 0 : 0.08 : 4; % time

x =  0 : 0.01 : 2;
xx =(3/8) : 0.05 : (7/8); 

for k = 0:N
    yy = project2_1_func(xx).* cos(( 2 * k + 1)* pi * xx / 4);
    Ak( k + 1 ) = (4 / ((2 * k + 1) * pi)) * trapz(xx,yy);
end
  
axis([0,2,-4,4])

for m = 1:length(t)
    u = 0;
    for k = 0:N
        u = u + Ak( k + 1 ) * cos(( 2 * k + 1)* pi * x / 4) * sin (( 2 * k + 1)* pi * t(m) / 4);
    end
    plot(x,u)
    axis([0,2,-1,1])
    MM(m) = getframe;
end

movie(MM,2)