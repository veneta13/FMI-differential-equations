clear

plot([-8,8],[0,0],'k')
hold on
plot([0,0],[-8,8],'k')

axis([-8,8,-8,8])
hold on

x0 = [-0.5, 4, 7, 2, -4, -7, -2, 0.5];
y0 = [-1, -3, -5, -7, 1, 3, 5, 7];

for k=1:length(x0)
    [t,x] = ode45(@project1_2_funcs, [0, 10], [x0(k),y0(k)]);
    plot(x(:,1),x(:,2),'b')
    hold on
    [t,x] = ode45(@project1_2_funcs, [0,-10], [x0(k),y0(k)]);
    plot(x(:,1),x(:,2),'r')
    hold on
end