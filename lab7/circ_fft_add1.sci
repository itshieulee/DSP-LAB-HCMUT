// Suppress the function redefinition warning
funcprot(0);

function y = circ_conv_fft(x, h)
    X = fft(x);
    H = fft(h);
    Y = X .* H;
    y = ifft(Y);
    if isreal(x) & isreal(h) then
        y = real(y);
    end
endfunction

function y = circ_conv_direct(x, h)
    N = length(x);
    y = zeros(1, N);
    
    for n = 1:N
        for k = 1:N
            // Use pmodulo here to handle negative values properly
            idx = pmodulo(n - k, N) + 1; 
            y(n) = y(n) + x(k) * h(idx);
        end
    end
endfunction

// --- Verification Script ---
N = 6;
x = [1, 2, 3, 4, 5, 6];
h = [2, -1, 0, 3, 1, -2];

disp("x:");
disp(x);
disp("h:");
disp(h);

y_fft = circ_conv_fft(x, h);
y_direct = circ_conv_direct(x, h);

disp("Result using FFT:");
disp(y_fft);

disp("Result using Direct Computation:");
disp(y_direct);

max_error = max(abs(y_fft - y_direct));
disp("Maximum absolute difference between the two methods:");
disp(max_error);

if max_error < 1e-10 then
    disp("Verification Successful: Both methods give the same result.");
else
    disp("Verification Failed: Results differ.");
end
