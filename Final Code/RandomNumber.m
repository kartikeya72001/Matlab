pd1 = makedist('Uniform');
x = -5:.01:5;
pdf1 = pdf(pd1,x);
figure;
plot(x,pdf1,'r','LineWidth',1); 
disp(mean(pd1))
disp(var(pd1))