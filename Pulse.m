fs=500; %sampling frequency
T=0.2; %width of the rectangule pulse in seconds

t=-0.5:1/fs:0.5; %time base

x=rectpuls(t,T); %generating the square wave

plot(t,x,'k');
title(['Rectangular Pulse width=', num2str(T),'s']);
xlabel('Time(s)');
ylabel('Amplitude');