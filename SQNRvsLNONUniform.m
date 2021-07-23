signal = 0+(10000-0).*rand(1000000,1);
signal_power = rms(signal);
signal_power = signal_power*signal_power;
% sqnr vector will contain the signal to noise ratio
% for each quantization level count
% where L is the number of quantization levels
N = 14;
sqnr = zeros(1, N);
% The levels vector
L = zeros(1,N);
for q_labels = 1:N
    q_label = q_labels+1;
    Vmax = max(signal);
    Vmin = min(signal);
    N = size(signal);
    step = zeros([1,N+1]);
    q_levels = 1;
    r = 1;
    while step(q_levels)<Vmax
        step(q_levels+1) = (q_label^r);
        q_levels = q_levels+1;
        r = r+1;
    end
    L(q_labels) = q_levels;
    quantization_error = zeros([1,N]);
    for i = 1:N
        for j = 2:q_levels
            if(step(j-1)<=signal(i) && signal(i)<=step(j))
                quantization_error = signal(i)-((step(j)+step(j-1))/2);
                break;
            end
        end
    end
    quantization_noise = (rms(quantization_error)^2);
    snr = signal_power/quantization_noise;
    snr = pow2db(snr);
    sqnr(q_labels) = snr;
end

plot(L, sqnr)
xlabel("No of Quantization Levels");
ylabel("SQNR in dB");