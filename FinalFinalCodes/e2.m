X = rand(1, 10000002);
histogram(X);

%Calculating mean and variance
disp("Mean is: ");
m = mean(X);
disp("Variance is: ");
v = var(X);