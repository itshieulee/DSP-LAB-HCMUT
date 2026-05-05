clf();
w = linspace(-%pi, %pi, 1000);

// Signal 1: x1(n) = 0.1^n u(n) -> X1(w) = 1 / (1 - 0.1*exp(-j*w))
X1 = 1 ./ (1 - 0.1 * exp(-%i * w));
mag_X1 = abs(X1);
phase_X1 = atan(imag(X1), real(X1));

// Signal 2: x2(n) = \delta(n) + ... + \delta(n-3) -> X2(w) = 1 + e^-jw + e^-j2w + e^-j3w
X2 = 1 + exp(-%i * w) + exp(-%i * 2 * w) + exp(-%i * 3 * w);
mag_X2 = abs(X2);
phase_X2 = atan(imag(X2), real(X2));

// Plotting X1
subplot(2, 2, 1); plot(w, mag_X1); title("Magnitude Spectrum |X1(w)|"); xgrid();
subplot(2, 2, 3); plot(w, phase_X1); title("Phase Spectrum arg(X1(w))"); xgrid();

// Plotting X2
subplot(2, 2, 2); plot(w, mag_X2); title("Magnitude Spectrum |X2(w)|"); xgrid();
subplot(2, 2, 4); plot(w, phase_X2); title("Phase Spectrum arg(X2(w))"); xgrid();
