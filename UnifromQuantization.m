b=3;
N=120;
n = 0:(N-1);
x = sin(2*pi*n/N);
x(x>=1)=(1-eps);
x(x<-1)=-1;
xq = floor((x+1)*2^(b-1));
xq=xq/(2^(b-1));
xq=xq-(2^(b)-1)/2^(b);
xe = x-xq;
stem(x,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
legend('exact','quantization','error','Location','SouthEast')
hold on
disp("Siganl to Noise Ratio is " + (6.02*b+1.76))