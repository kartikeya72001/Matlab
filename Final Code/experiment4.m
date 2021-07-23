clear;
fs=500; 
T=10; 

t=-10:1/fs:10; 

x=0.5*(sign(t) - sign(t-10)); 

plot(t,x);
title(['Rectangular Pulse']);
xlabel('Time(s)');
ylabel('Amplitude');
ylim([0 2]);
L=length(x);
X = fftshift(fft(x,L)); 
f = fs*(-L/2:L/2-1)/L; 


figure;
plot(f,abs(X));
title('Magnitude of Rectangular Pulse');
xlabel('Frequency (Hz)')
ylabel('Magnitude |X(f)|');
xlim([-1 1]);

figure;
plot(f,angle(X));
title('Phase Spectrum of Rectangular Pulse');
xlabel('Frequency (Hz)')
ylabel('Angle Theta(X(f))');
ylim([-3 3]);
