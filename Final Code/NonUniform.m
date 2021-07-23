b=3;
N=120;
n = 0:(N-1);
x = sin(2*pi*n/N);
x(x>=1)=(1-eps);
x(x<-1)=-1;

compX=compand(x,255,1);

xq = floor((compX+1)*2^(b-1));
xq=xq/(2^(b-1));
xq=xq-(2^(b)-1)/2^(b);            
xe = compX-xq;

stem(x,'m');
hold on;
stem(compX,'b');
hold on;
stem(xq,'r');
hold on;
stem(xe,'g');
legend('exact','compressed signal','companded quantization','error','Location','SouthEast');