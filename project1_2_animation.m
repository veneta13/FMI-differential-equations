clear

plot([-8,8],[0,0],'k')
hold on
plot([0,0],[-8,8],'k')

axis([-8,8,-8,8])
hold on

x0 = -0.5;
y0 = -1;

[t,x] = ode45(@project1_2_funcs, [0,4], [x0,y0]);

for k=1:length(x)
    plot( x(1:k, 1), x(1:k, 2) );
    hold on
    plot([-8,8],[0,0],'k')
    hold on
    plot([0,0],[-8,8],'k')
    hold on
    M(k) = getframe;
    hold off
end