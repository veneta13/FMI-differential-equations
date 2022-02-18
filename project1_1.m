S = [0.1 0.02 0.002]; % steps
Y = cell(1,numel(S));

for k=1:numel(S)
    s = S(k); % current step
    x = 0:s:5;  % interval of x
    y = zeros(1, numel(x)); 
    y(1) = pi/2;  % initial value of y
    n = numel(y);  % the number of y values
    
    for i=1:n-1
        f = sin((x(i) * x(i)) + (y(i)));
        y(i+1) = y(i) + s * f;
    end
    
    Y{k} = [x; y].';
end

plot(Y{1}(:,1), Y{1}(:,2), 'g', 'DisplayName', ['Step size s=' num2str(S(1), '%.3f')]);
hold on
plot(Y{2}(:,1), Y{2}(:,2), 'r', 'DisplayName', ['Step size s=' num2str(S(2), '%.3f')]);
hold on
plot(Y{3}(:,1), Y{3}(:,2), 'b', 'DisplayName', ['Step size s=' num2str(S(3), '%.3f')]);
hold on
legend