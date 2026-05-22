funcprot(0);

function y = linear_conv_fft(x, h)
    x = matrix(x, 1, -1);
    h = matrix(h, 1, -1);
    
    N1 = length(x);
    N2 = length(h);
    L = N1 + N2 - 1;
    
    x_pad = [x, zeros(1, L - N1)];
    h_pad = [h, zeros(1, L - N2)];
    
    X = fft(x_pad);
    H = fft(h_pad);
    Y = X .* H;
    y = ifft(Y);
    
    if isreal(x) & isreal(h) then
        y = real(y);
    end
endfunction

x = [1, 2, 3, 4];
h = [1, -1, 2, -2, 1];

disp("Input Sequence x:");
disp(x);
disp("Input Sequence h:");
disp(h);

y_fft = linear_conv_fft(x, h);
y_conv = conv(x, h);

disp("Result using zero-padded FFT:");
disp(y_fft);

disp("Result using built in conv command:");
disp(y_conv);

max_error = max(abs(y_fft - y_conv));
disp("Maximum absolute difference:");
disp(max_error);

if max_error < 1e-10 then
    disp("Verification Successful");
else
    disp("Verification Failed");
end
