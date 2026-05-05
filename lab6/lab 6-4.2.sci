xn = [1, 0, 1, 2, 3, 2, 1, 0];
N = length(xn);
k = 0:N-1;

ck = fft(xn, -1) / N;
mag_ck = abs(ck);
phase_ck = atan(imag(ck), real(ck));

subplot(2,1,1);
plot2d3(k, mag_ck, style=2);
plot2d(k, mag_ck, style=-9);
xtitle("Magnitude Spectrum |c_k|", "k", "Magnitude");
xgrid();

subplot(2,1,2);
plot2d3(k, phase_ck, style=5);
plot2d(k, phase_ck, style=-9);
xtitle("Phase Spectrum", "k", "Phase (rad)");
xgrid();
