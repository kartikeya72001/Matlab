x = [-11:0.05:11];
y = 0.5 * (sign(x) - sign(x - 10));
%figure;
%plot(x,y);
%xlabel('Time (in seconds)');
%ylabel('Amplitude');
%title('Rectangular wave of width 10');
z = fft(y);
k = fftshift(z);
figure, plot(x, abs(k));
xlabel('Time (in seconds)');
ylabel('Amplitude');
title('Amplitude Spectrum');
figure,
plot(x,angle(k));
xlabel('Time (in seconds)');
ylabel('Phase');
title('Phase Spectrum');
