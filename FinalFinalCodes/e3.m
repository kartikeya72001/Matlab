X = randn(1, 100002);
histogram(X);

%Calculating mean and variance
disp("Mean is: ");
m = mean(X);
disp(m);
disp("Variance is: ");
v = var(X);
disp(v);