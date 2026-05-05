w = linspace(-%pi, %pi, 500);

// Signal x1(n)
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
// Signal x2(n)
X2 = 1 + exp(-%i*w) + exp(-%i*2*w) + exp(-%i*3*w);

// Plotting for x1
subplot(2, 2, 1); plot(w, abs(X1)); title('Amp Spectrum x1');
subplot(2, 2, 2); plot(w, atan(imag(X1), real(X1))); title('Phase Spectrum x1');

// Plotting for x2
subplot(2, 2, 3); plot(w, abs(X2)); title('Amp Spectrum x2');
subplot(2, 2, 4); plot(w, atan(imag(X2), real(X2))); title('Phase Spectrum x2');
