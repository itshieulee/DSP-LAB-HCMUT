
w = linspace(-%pi, %pi, 1000);
// H(w) = 1 / (1 + 0.1*exp(-j*w) + 0.2*exp(-j*2*w))
H = 1 ./ (1 + 0.1*exp(-%i*w) + 0.2*exp(-2*%i*w));

subplot(2, 1, 1);
plot(w, abs(H));
title('Amplitude Spectrum |H(e^{j\omega})|');
xlabel('\omega'); ylabel('Magnitude');

subplot(2, 1, 2);
plot(w, atan(imag(H), real(H)));
title('Phase Spectrum \angle H(e^{j\omega})');
xlabel('\omega'); ylabel('Phase (rad)');
