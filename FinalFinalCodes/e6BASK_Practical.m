b = input('Enter the Bit stream \n '); %b = [0 1 0 1 1 1 0];
n = length(b);
t = 0:.01:n;
x = 1:1:(n+1)*100;
for i = 1:n
 if (b(i) == 0)
 b_p(i) = 0;
 else
 b_p(i) = 1;
 end
 for j = i:.1:i+1
 bw(x(i*100:(i+1)*100)) = b_p(i);
 end
end
bw = bw(100:end);
plot(t,bw);

hold on
sint = sin(2*pi*t);
st = bw.*sint;
plot(t,st)
