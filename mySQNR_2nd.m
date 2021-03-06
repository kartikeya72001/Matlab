function sqnr = mySQNR_2nd(sig, q_level)
% Generating the sig inputs
N = numel(sig);
sig_power = (sum((sig).^2))/N;

% Generating the quantization levels
Vmin = min(sig);
Vmax = max(sig);

% Creating the steps
step = Vmin+(Vmax-Vmin)*rand(1, q_level+1);
sort(step);
step(1) = 0;

% Generating the error vector
eq = zeros(1, N);
for i = 1: N
    for j = 2:q_level+1
        if(step(j-1)<=sig(i) && sig(i)<=step(j))
            eq(i) = sig(i)-((step(j-1)+step(j))/2);
            break
        end
    end
end
% Calculating the quantization noise
q_noise = (sum((eq).^2))*1/(N);
sqnr = sig_power/q_noise;
end 